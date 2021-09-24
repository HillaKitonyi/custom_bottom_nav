import 'package:flutter/material.dart';
import 'package:my_auto_route/posts/posts_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nested Routing',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Nested Routes'),
        ),
        body: PostsPage(),
      ),
    );
  }
}
