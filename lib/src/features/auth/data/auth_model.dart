class AuthModel {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? refreshToken;

  AuthModel(
      {this.accessToken, this.tokenType, this.expiresIn, this.refreshToken});

  AuthModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    tokenType = json['tokenType'];
    expiresIn = json['expiresIn'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['tokenType'] = tokenType;
    data['expiresIn'] = expiresIn;
    data['refreshToken'] = refreshToken;
    return data;
  }
}
