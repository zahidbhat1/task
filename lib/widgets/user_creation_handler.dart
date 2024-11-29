import 'package:flutter/material.dart';
import '../utils/navigation_helper.dart';
import '../utils/notification_helper.dart';

class UserCreationHandler extends StatelessWidget {
  final bool success;
  final bool isLoading;
  final VoidCallback onSetLoading;

  const UserCreationHandler({
    Key? key,
    required this.success,
    required this.isLoading,
    required this.onSetLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Handle the user creation result after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      handleUserCreationResult(context);
    });

    return Center(
      child: isLoading
          ? const CircularProgressIndicator()
          : const SizedBox.shrink(),
    );
  }

  void handleUserCreationResult(BuildContext context) {
    onSetLoading();
    NotificationHelper.showUserCreationResult(context, success);

    if (success) {
      NavigationHelper.popWithResult(context, true);
    }
  }
}