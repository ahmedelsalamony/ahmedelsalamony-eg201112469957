import 'package:hive_flutter/hive_flutter.dart';
import '../../core/app_strings.dart';

import 'dio_interceptor.dart';
import '../../core/api_config.dart';
import 'package:dio/dio.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio) {
    var box = Hive.box(AppStrings.kHiveBoxName);
    Map<String, dynamic>? basicHeader = ApiConfig.header;
    if (box.get(AppStrings.kToken) != null) {
      basicHeader = {...ApiConfig.header}
        ..addAll({"Authorization": "Bearer ${box.get(AppStrings.kToken)}"});
    }
    dio
      ..options.baseUrl = ApiConfig.baseUrl
      ..options.headers = basicHeader
      ..options.connectTimeout = ApiConfig.connectionTimeout
      ..options.receiveTimeout = ApiConfig.receiveTimeout
      ..options.responseType = ResponseType.json
      ..options.validateStatus = (statusCode) {
        return statusCode! < 500;
      }
      ..interceptors.add(DioInterceptor());
  }
}
