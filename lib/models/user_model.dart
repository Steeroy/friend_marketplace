import 'dart:convert';

class User {
  final String id;
  final String fullName;
  final String email;
  final String token;
  final String role;
  final String businessName;
  final String location;
  final String phoneNumber;
  User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.token,
    required this.role,
    required this.businessName,
    required this.location,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'token': token,
      'role': role,
      'businessName': businessName,
      'location': location,
      'phoneNumber': phoneNumber,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      fullName: map['fullName'] ?? '',
      email: map['email'] ?? '',
      token: map['token'] ?? '',
      role: map['role'] ?? '',
      businessName: map['businessName'] ?? '',
      location: map['location'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
