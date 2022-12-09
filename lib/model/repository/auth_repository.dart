import 'package:flutter_base/model/api/api_client.dart';
import 'package:flutter_base/model/api/object_response.dart';
import 'package:flutter_base/model/entity/request/login_request.dart';
import 'package:flutter_base/model/entity/response/login_response.dart';

abstract class AuthRepository {
  Future<ObjectResponse<LoginResponse>> login(LoginRequest param);
}

class AuthRepositoryImpl extends AuthRepository {
  ApiClient? _apiClient;

  AuthRepositoryImpl(ApiClient? client) {
    _apiClient = client;
  }

  @override
  Future<ObjectResponse<LoginResponse>> login(LoginRequest param) {
    return _apiClient!.login(param);
  }
}
