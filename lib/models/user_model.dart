import 'dart:convert';

class UserModel {
  final String email;
  final String name;
  final String uid;
  final String token;
  final String profilePic;

  UserModel(
      {required this.email,
      required this.name,
      required this.uid,
      required this.token,
      required this.profilePic});
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'profilePic': profilePic,
      'uid': uid,
      'token': token
    };
  }

  factory UserModel.fromMap(Map<String,dynamic> map){
    retrun UserModel(
      email: map['email'] ?? '',
    )
  }
}
