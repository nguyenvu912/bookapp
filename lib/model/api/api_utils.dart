import 'package:dio/dio.dart';
import 'package:flutter_base/app/app_config.dart';
import 'api_client.dart';

import 'api_interceptors.dart';

class ApiUtil {
  static ApiClient? getApiClient() {
    final dio = Dio();
    dio.options.connectTimeout = 60000;
    dio.interceptors.add(ApiInterceptors());
    final apiClientBagri = ApiClient(dio, baseUrl: AppConfig.baseUrl);
    return apiClientBagri;
  }
}
