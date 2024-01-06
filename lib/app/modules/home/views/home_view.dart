import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:linkpreview/app/modules/home/views/post_item_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Social!'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.listPost.length,
        itemBuilder: (BuildContext context, int index) {
          return PostItemView(item: controller.listPost[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO : post new item
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
