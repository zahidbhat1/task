class User {
  final int id;
  final String name;
  final int age;
  final String phone;
  final String email;
  final String password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.phone,
    required this.email,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      phone: json['phone'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'phone': phone,
      'email': email,
      'password': password,
    };
  }
}