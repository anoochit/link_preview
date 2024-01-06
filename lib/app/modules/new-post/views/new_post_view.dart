import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_post_controller.dart';

class NewPostView extends GetView<NewPostController> {
  const NewPostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewPostView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NewPostView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
