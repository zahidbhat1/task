import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDataScreen extends StatelessWidget {
  final User userData;

  const UserDataScreen({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Data')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${userData.name}'),
            const SizedBox(height: 8),
            Text('Age: ${userData.age}'),
            const SizedBox(height: 8),
            Text('Phone: ${userData.phone}'),
            const SizedBox(height: 8),
            Text('Email: ${userData.email}'),
          ],
        ),
      ),
    );
  }
}