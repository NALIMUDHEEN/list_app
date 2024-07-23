import 'package:flutter/material.dart';
import 'package:list_app/user.dart';

class UserdtScreen extends StatelessWidget {
  final User user;

  const UserdtScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Name: ${user.name}'),
            Text('Email: ${user.email}'),
            Text('Phone: ${user.phone}'),
            // Add more user details if needed
          ],
        ),
      ),
    );
  }
}
