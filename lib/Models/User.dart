import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String username;
  final String password;
  String? bio;
  String? profileImage;
  final DateTime timestamp;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.password,
    required this.timestamp,
    this.bio,
    this.profileImage,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'password': password,
      'timestamp': timestamp,
      'bio': bio,
      'profileImage': profileImage,
    };
  }

  String toJson() => json.encode(toMap());

  static List<User> mockUsers = [
    User(
        id: '1',
        name: 'mhmd',
        email: 'm@gmail.com',
        username: 'mhmdnd',
        password: '123456',
        timestamp: DateTime.now()),
    User(
        id: '2',
        name: 'mhmd',
        email: 'm@gmail.com',
        username: 'mhmdnd',
        password: '123456',
        timestamp: DateTime.now()),
    User(
        id: '3',
        name: 'mhmd',
        email: 'm@gmail.com',
        username: 'mhmdnd',
        password: '123456',
        timestamp: DateTime.now()),
  ];
}
