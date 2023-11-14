import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controllers/SearchBarController.dart';

class SearchScreen extends StatelessWidget {
  final SearchBarController _searchBarController = Get.put(SearchBarController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: _searchBarController.isSearchMode.value ? buildSearchAppBar() : buildDefaultAppBar(),
      body: Center(
        child: Text("Your main content goes here."),
      ),
    ));
  }

  AppBar buildDefaultAppBar() {
    return AppBar(
      title: Text('My App'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            _searchBarController.toggleSearchMode();
          },
        ),
      ],
    );
  }

  AppBar buildSearchAppBar() {
    return AppBar(
      title: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
        ),
        autofocus: true,
        textInputAction: TextInputAction.search,
        onSubmitted: (query) {
          // Handle search logic here
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            _searchBarController.toggleSearchMode();
          },
        ),
      ],
    );
  }
}
