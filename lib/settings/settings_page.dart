import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Account Settings',
            style: TextStyle(fontSize: 24),
          ),
          Card(
            margin: EdgeInsets.only(top: 30),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
              child: Text(
                'user234\n\nuser234@email.com',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
