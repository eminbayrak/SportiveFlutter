import 'dart:async';

import 'package:sportiveparent/models/user.dart';
import 'package:sportiveparent/utils/network_util.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://sportiveportal.azurewebsites.net";
  static final LOGIN_URL = BASE_URL + "/token";
  static final _API_KEY = "somerandomkey";

  Future<User> login(String username, String password) {
    return _netUtil.post(LOGIN_URL, body: {
      "token": _API_KEY,
      "username": username,
      "password": password,
      "grant_type": "password",
    }).then((dynamic res) {
      print(res.toString());
      if(res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }
}
