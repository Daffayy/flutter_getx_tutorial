import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/pages/components/loading_overlay.dart';
import 'package:flutter_getx_tutorial/pages/posts/posts_controller.dart';
import 'package:get/get.dart';

import 'component/posts_list_item.dart';

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Container(
        child: GetBuilder<PostsController>(
          builder: (controller) {
            return LoadingOverLay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postsList.length,
                itemBuilder: (context, index) => PostsListItem(
                  post: controller.postsList[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}