import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/SearchController.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

final Searchcontroller controller = Get.put(Searchcontroller());

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Textfield(
              hintText: "Search",
              controller: controller.search,
              obsqureText: false,
              icon: Icons.search,
              onPressed: () {},
              onChanged: (value) {
                controller.searchUsers(value);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Obx(() {
                if (controller.users.isEmpty) {
                  return Center(child: Text("No users found"));
                }

                return ListView.builder(
                  itemCount: controller.users.length,
                  itemBuilder: (context, index) {
                    final user = controller.users[index];
                    return Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                "http://192.168.1.10/storage/${user['profile_picture'] ?? ''}", // adjust field name as needed
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(user['name'] ?? ''),
                                const SizedBox(height: 5),
                                Text(user['username'] ?? ''),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
