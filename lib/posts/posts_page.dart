import 'package:flutter/material.dart';
import 'package:my_auto_route/data/app_data.dart';
import 'package:my_auto_route/widgets.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);
  final posts = Post.posts;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: posts.map((p) {
            return PostTile(
              tileColor: p.color,
              postTitle: p.title,
              onTapTile: () {},
            );
          }).toList(),
        ),
      ),
    );
  }
}
