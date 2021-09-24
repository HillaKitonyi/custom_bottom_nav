import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final Color tileColor;
  final String postTitle;
  final VoidCallback onTapTile;

  const PostTile({
    Key? key,
    required this.tileColor,
    required this.postTitle,
    required this.onTapTile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapTile,
      child: Card(
        margin: const EdgeInsets.only(bottom: 20),
        color: tileColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
          child: Column(
            children: [
              Text(
                postTitle,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final Color avatarColor;
  final String username;
  final VoidCallback? onAvatarTap;

  const UserAvatar({
    Key? key,
    required this.avatarColor,
    required this.username,
    this.onAvatarTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: onAvatarTap,
        child: Column(children: [
          CircleAvatar(
            backgroundColor: avatarColor,
            radius: 65,
            child: const Icon(Icons.person_rounded, size: 65, color: Colors.black45),
          ),
          const SizedBox(height: 10),
          Text(
            username,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
        ]),
      ),
    );
  }
}