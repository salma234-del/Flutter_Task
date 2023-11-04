class UserModel {
  final int id;
  final String name;

  UserModel({required this.id, required this.name});

  factory UserModel.fromJsom(json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
