import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/data/app_data.dart';
import 'package:my_auto_route/router/app_router.gr.dart';
import 'package:my_auto_route/widgets.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: users.map((user) {
          return UserAvatar(
            avatarColor: user.color,
            username: 'User ${user.id}',
            onAvatarTap: () => AutoRouter.of(context).push(UserProfileRoute(userId: user.id)),
          );
        }).toList(),
      ),
    );
  }
}
