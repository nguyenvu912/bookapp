import 'package:flutter_base/model/api/api_client.dart';
import 'package:flutter_base/model/api/response/auth/auth_response.dart';
import 'package:flutter_base/model/api/response/object_response.dart';
import 'package:flutter_base/model/entity/token/token_entity.dart';
import 'package:flutter_base/model/local_storage/shared_preferences_helper.dart';

abstract class AuthRepository {
  Future<void> removeToken();

  Future<void> setToken(TokenEntity token);

  Future<TokenEntity> signIn(String username, String password);

  Future<dynamic> authRegistty(
      String username, String password, String fullname, String phone);

  Future<dynamic> changePassword(
      String oldPass, String newPass, String confirmedPass);

  Future<dynamic> forgotPassword(String userName, String phone);

  Future<TokenEntity?> getToken();

  Future<ObjectResponse<AuthResponse>> logout();
}

class AuthRepositoryImpl extends AuthRepository {
  ApiClient? _apiClient;

  AuthRepositoryImpl(ApiClient? client) {
    _apiClient = client;
  }

  @override
  Future<void> removeToken() async {
    SharedPreferencesHelper.removeToken();
  }

  @override
  Future<TokenEntity> signIn(String username, String password) async {
    final param = {
      'username': username,
      'password': password,
    };
    return _apiClient!.authLogin(param);
  }

  @override
  Future<dynamic> authRegistty(
      String username, String password, String fullname, String phone) async {
    final param = {
      'username': username,
      'password': password,
      'fullname': fullname,
      'phone': phone,
    };
    return _apiClient!.authRegistty(param);
  }

  @override
  Future<dynamic> changePassword(
      String oldPass, String newPass, String confirmedPass) async {
    final param = {
      'old_password': oldPass,
      'new_password': newPass,
      'retype_new_password': confirmedPass,
    };
    return _apiClient!.changePassword(param);
  }

  @override
  Future<dynamic> forgotPassword(String userName, String phone) async {
    final param = {
      'username': userName,
      'phone': phone,
    };
    return _apiClient!.forgotPassword(param);
  }

  @override
  Future<TokenEntity?> getToken() async {
    return await SharedPreferencesHelper.getToken();
  }

  Future<void> setToken(TokenEntity token) async {
    return await SharedPreferencesHelper.setToken(token);
  }

  @override
  Future<ObjectResponse<AuthResponse>> logout() async {
    return await _apiClient!.logout();
  }
}
