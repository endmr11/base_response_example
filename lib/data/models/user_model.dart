class UserModel {
  UserModel({
    this.id,
    this.name,
    this.email,
  });

  int? id;
  String? name;
  String? email;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
