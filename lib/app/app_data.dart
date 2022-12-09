import 'package:flutter_base/model/entity/response/login_response.dart';

class GlobalData {
  GlobalData._privateConstructor();

  static final GlobalData instance = GlobalData._privateConstructor();

  String? token;
  String? role;
  LoginResponse? userEntity;
}
