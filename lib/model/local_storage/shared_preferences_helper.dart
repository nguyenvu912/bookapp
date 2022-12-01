import 'dart:convert';

import 'package:flutter_base/model/entity/token/token_entity.dart';
import 'package:flutter_base/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../entity/user/user_entity.dart';

class SharedPreferencesHelper {
  static const _authTokenKey = '_authTokenKey';
  static const _roleKey = '_roleKey';
  static const _userInfoKey = '_userInfoKey';
  static const _longitude = '_longitude';
  static const _latitude = '_latitude';

  static Future<void> setToken(TokenEntity token) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(_authTokenKey, jsonEncode(token.toJson()));
    } catch (e) {
      logger.e(e);
    }
  }

  static Future<TokenEntity?> getToken() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? tokenJson = prefs.getString(_authTokenKey);

      if (tokenJson == null)
        return null;
      else
        return TokenEntity.fromJson(jsonDecode(tokenJson));
    } catch (e) {
      return null;
    }
  }

  static Future<void> removeToken() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove(_authTokenKey);
    } catch (e) {
      logger.e(e);
    }
  }

  static void setUserInfo(UserEntity user) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(_userInfoKey, json.encode(user.toJson()));
    } catch (e) {
      logger.e(e);
    }
  }

  static Future<UserEntity?> getUserInfo() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var value = prefs.getString(_userInfoKey);
      return UserEntity.fromJson(json.decode(value!));
    } catch (e) {
      return null;
    }
  }

  //Set latitude
  static void setLatitude(String latitude) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(_latitude, latitude);
    } catch (e) {
      logger.e(e);
    }
  }

  //Get latitude
  static Future<String?> getLatitude() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(_latitude) ?? null;
    } catch (e) {
      return "";
    }
  }

  //Set longitude
  static void setLongitude(String longitude) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(_longitude, longitude);
    } catch (e) {
      logger.e(e);
    }
  }

  //Get latitude
  static Future<String?> getLongitude() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(_longitude) ?? null;
    } catch (e) {
      return "";
    }
  }

  static Future<void> setRouter(int route) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt("_router", route);
    } catch (e) {
      logger.e(e);
    }
  }

  static Future<int?> getRouter() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      int? _router = prefs.getInt("_router");

      if (_router == null)
        return null;
      else
        return _router;
    } catch (e) {
      return null;
    }
  }

  static Future<void> resetStorage() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.clear();
    } catch (e) {
      logger.e(e);
    }
  }
}
