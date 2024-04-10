class AuthModel {
  String? accessToken;

  int? expiresIn;

  AuthModel({
    this.accessToken,
    this.expiresIn,
  });

  AuthModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['acessToken'];
    expiresIn = json['expiresIn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['acessToken'] = accessToken;
    data['expiresIn'] = expiresIn;

    return data;
  }
}
