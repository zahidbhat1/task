import 'package:flutter/material.dart';

class NotificationHelper {
  static void showUserCreationResult(BuildContext context, bool success) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(success ? 'User created successfully!' : 'Failed to create user'),
        backgroundColor: success ? Colors.green : Colors.red,
      ),
    );
  }
}