import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class DioService {
  final Dio _dio;
  final GetStorage storage = GetStorage();

  DioService._internal(this._dio);

  factory DioService() {
    final dio = Dio(BaseOptions(
      baseUrl: 'http://192.168.1.10:8000/api/',
      connectTimeout: Duration(seconds: 15),
      receiveTimeout: Duration(seconds: 15),
      headers: {
        'Accept': 'application/json',
      },
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        final token = GetStorage().read('token');
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ));

    return DioService._internal(dio);
  }

  Dio get client => _dio;
}
