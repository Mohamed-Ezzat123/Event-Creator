class MyUser {
  static const String collectionName = 'users';

  String id;

  String phone;

  String userName;

  String email;

  MyUser({
    required this.id,
    required this.phone,
    required this.userName,
    required this.email,
  });

  MyUser.fromjson(Map<String, dynamic> json)
      : this(
          id: json['id'] as String,
          phone: json['phone'] as String,
          userName: json['user_name'] as String,
          email: json['email'] as String,
        );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "phone": phone,
      "user_name": userName,
      "email": email,
    };
  }
}
