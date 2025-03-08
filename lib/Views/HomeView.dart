import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/Refresh.dart';
import 'package:mategram/Controllers/HomeController.dart';
import 'package:mategram/Routes/AppRoute.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

final HomeController controller = Get.put(HomeController());

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return RefreshComponent(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
      },
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mategram",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.notification);
                  },
                  icon: Icon(
                    Icons.notifications,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                            ),
                            Text('Mhmd'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mhmd"),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "2 hours ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Description"),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset("lib/images/Mategram design.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_rounded,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text("10"),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.comment,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text("10"),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_a_photo), label: "Add"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
