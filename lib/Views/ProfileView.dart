import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Components/Refresh.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/Views/PostTabView.dart';
import 'package:mategram/Views/TagBarView.dart';
import 'package:mategram/Views/VideoTabView.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return RefreshComponent(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("mhmdnd"),
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'logout') {
                    Get.offAllNamed(AppRoute.login);
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem<String>(
                    value: 'logout',
                    child: Text('Logout'),
                  ),
                ],
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 35,
                    ),
                    Column(
                      children: [
                        Text("1"),
                        SizedBox(
                          height: 3,
                        ),
                        Text("post"),
                      ],
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Text("1"),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Followers"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Text("1"),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Following"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("BIO"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Elevatedbutton(
                          text: "Edit Profile",
                          backColor: Colors.black,
                          foreColor: Colors.white,
                          onPressed: () {
                            Get.toNamed(AppRoute.editProfile);
                          }),
                    ),
                  ],
                ),
                TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on), text: "Posts"),
                      Tab(icon: Icon(Icons.video_library), text: "videos"),
                      Tab(icon: Icon(Icons.tag), text: "Tagged"),
                    ]),
                Expanded(
                  child: TabBarView(
                    children: [
                      PostTabView(),
                      VideoTabView(),
                      TagBarView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
