class userModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? profile_url;
  String? token;

  userModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.profile_url,
    required this.token,
  });

  factory userModel.fromJson(Map<String, dynamic> json) => userModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        username: json['username'],
        profile_url: json['profile_photo_url'],
        token: json['token'],
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'username': username,
        'profile_photo_url': profile_url,
        'token': token
      };
}
