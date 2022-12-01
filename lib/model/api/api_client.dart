import 'package:dio/dio.dart';
import 'package:flutter_base/app/app_config.dart';
import 'package:flutter_base/model/api/request/profile/update_profile_request.dart';
import 'package:flutter_base/model/api/response/object_response.dart';
import 'package:flutter_base/model/entity/token/token_entity.dart';
import 'package:flutter_base/model/entity/user/user_entity.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConfig.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/login")
  Future<TokenEntity> authLogin(@Body() Map<String, dynamic> body);

  @POST("/registry")
  Future<dynamic> authRegistty(@Body() Map<String, dynamic> body);

  @PUT("/change-password")
  Future<dynamic> changePassword(@Body() Map<String, dynamic> body);

  @POST("/reset-password")
  Future<dynamic> forgotPassword(@Body() Map<String, dynamic> body);

  @GET("logout")
  Future<dynamic> logout({@Query("returnHttpStatus") bool queryHttp = true});

  @GET("/customer/profile")
  Future<ObjectResponse<UserEntity>> getUserProfile();

  @PUT("/customer/profile")
  Future<ObjectResponse<UserEntity>> updateProfile(
      @Body() UpdateProfileRequest body);

  @PUT("/customer/profile/avatar")
  Future<ObjectResponse<UserEntity>> updateAvatar(
      @Body() Map<String, dynamic> body);
}
