import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class ApiService {
  static const String baseUrl = 'https://e603-122-161-243-236.ngrok-free.app/api/user';
  String? _authToken;

  Future<String> signup(String name, int age, String phone, String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/getOther'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'name': name,
          'age': age,
          'phone': phone,
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        _authToken = data['token'];
        return data['message'];
      } else {
        throw Exception('Failed to signup');
      }
    } catch (e) {
      throw Exception('Error during signup: $e');
    }
  }

  Future<User> getUserData() async {
    if (_authToken == null) {
      throw Exception('Not authenticated');
    }

    try {
      final response = await http.get(
        Uri.parse('$baseUrl/getOther'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_authToken',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return User.fromJson(data['data']);
      } else {
        throw Exception('Failed to get user data');
      }
    } catch (e) {
      throw Exception('Error getting user data: $e');
    }
  }
}