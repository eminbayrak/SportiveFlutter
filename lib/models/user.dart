class User {
  String _username;
  String _password;
  String _grant_type;

  User(this._username, this._password, this._grant_type);

  User.map(dynamic obj) {
    this._username = obj["username"];
    this._password = obj["password"];
    this._grant_type = "password";
  }

  String get username => _username;
  String get password => _password;
  String get grant_type => _grant_type;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;
    map["grant_type"] = _grant_type;

    return map;
  }
}