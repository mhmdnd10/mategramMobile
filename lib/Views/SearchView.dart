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
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name"),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("Username"),
                            ],
                          )
                        ],
                      )),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
