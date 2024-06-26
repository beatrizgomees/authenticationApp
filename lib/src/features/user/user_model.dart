class User {
  int? id;
  String? name;
  String? username;
  String? email;
  String? password;
  String? acessToken;

  User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.acessToken,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        password: json['password'],
        acessToken: json['acessToken']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['acessToken'] = this.acessToken;
    return data;
  }
}
