import 'package:flutter_base/model/entity/user/user_entity.dart';

class GlobalData {
  GlobalData._privateConstructor();

  static final GlobalData instance = GlobalData._privateConstructor();

  String? token;
  String? role;
  UserEntity? userEntity;
}
