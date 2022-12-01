import 'package:flutter_base/model/api/api_client.dart';
import 'package:flutter_base/model/api/request/profile/update_profile_request.dart';
import 'package:flutter_base/model/api/response/object_response.dart';
import 'package:flutter_base/model/entity/user/user_entity.dart';

abstract class ProfileRepository {
  Future<ObjectResponse<UserEntity>> getUserProfile();

  Future<ObjectResponse<UserEntity>> updateProfile(UpdateProfileRequest body);

  Future<ObjectResponse<UserEntity>> updateAvatar(String base64Image);
}

class ProfileRepositoryImpl extends ProfileRepository {
  ApiClient apiClient;

  ProfileRepositoryImpl(this.apiClient);

  @override
  Future<ObjectResponse<UserEntity>> getUserProfile() async {
    return await apiClient.getUserProfile();
  }

  @override
  Future<ObjectResponse<UserEntity>> updateProfile(
      UpdateProfileRequest body) async {
    return await apiClient.updateProfile(body);
  }

  @override
  Future<ObjectResponse<UserEntity>> updateAvatar(String base64Image) async {
    return await apiClient.updateAvatar({'avatar': base64Image});
  }
}
