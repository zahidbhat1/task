import 'package:flutter/material.dart';
import '../widgets/user_creation_handler.dart';

class UserCreationScreen extends StatefulWidget {
  final bool initialSuccess;

  const UserCreationScreen({
    Key? key,
    this.initialSuccess = false,
  }) : super(key: key);

  @override
  State<UserCreationScreen> createState() => _UserCreationScreenState();
}

class _UserCreationScreenState extends State<UserCreationScreen> {
  late bool _isLoading;
  late bool _success;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _success = widget.initialSuccess;
  }

  void _setLoading(bool value) {
    if (mounted) {
      setState(() {
        _isLoading = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserCreationHandler(
        success: _success,
        isLoading: _isLoading,
        onSetLoading: () => _setLoading(false),
      ),
    );
  }
}