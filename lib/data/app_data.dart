import 'package:flutter/material.dart';

class Post {
  final Color color;
  final String title;
  final int id;
  Post(this.color, this.title, this.id);

  static final posts = [
    Post(Colors.amberAccent, 'Post 1', 1),
    Post(Colors.blue, 'Post 2', 2),
    Post(Colors.pinkAccent, 'Post 3', 3),
  ];
}

class User {
  final int id;
  final Color color;
  User(this.id, this.color);

  static final users = [
    User(1, Colors.amberAccent),
    User(2, Colors.blue),
    User(3, Colors.pinkAccent),
  ];
}
