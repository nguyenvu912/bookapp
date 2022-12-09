import 'package:dio/dio.dart';
import 'package:flutter_base/app/app_config.dart';
import 'package:flutter_base/model/api/object_response.dart';
import 'package:flutter_base/model/entity/request/login_request.dart';
import 'package:flutter_base/model/entity/response/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConfig.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  ///Login
  @POST("/user/login")
  Future<ObjectResponse<LoginResponse>> login(@Body() LoginRequest body);

  ///Home
}
