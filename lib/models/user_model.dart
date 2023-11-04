class UserModel {
  final int id;
  final String userName;

  UserModel({required this.id, required this.userName});

  factory UserModel.fromJsom(json) {
    return UserModel(
      id: json['id'],
      userName: json['username'],
    );
  }
}
