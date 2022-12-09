import 'package:flutter_base/model/api/api_client.dart';

abstract class ProfileRepository {}

class ProfileRepositoryImpl extends ProfileRepository {
  ApiClient apiClient;

  ProfileRepositoryImpl(this.apiClient);
}
