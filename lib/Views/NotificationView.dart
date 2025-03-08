import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/Refresh.dart';
import 'package:mategram/Routes/AppRoute.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return RefreshComponent(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: IconButton(
              onPressed: () {
                Get.offAllNamed(AppRoute.home);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 35,
              )),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "alind",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " started following you. ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "1s",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
