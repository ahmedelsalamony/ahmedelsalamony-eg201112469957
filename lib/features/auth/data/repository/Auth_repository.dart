import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../common/network/api_service.dart';
import '../../../../core/api_config.dart';
import '../../../../core/app_failure.dart';
import '../models/login_response_model.dart';

class AuthRepository {
  final ApiService apiService;

  AuthRepository({required this.apiService});
  Future<Either<AppFailure, LoginResponseModel>> login(
      {required String mobile, required String password}) async {
    dynamic data;
    try {
      final loginData = {
        "mobile": mobile,
        "password": password,
      };
      data = await apiService.post(
          endPoint: ApiConfig.login, data: json.encode(loginData));

      return right(LoginResponseModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          data["message"],
        ),
      );
    }
  }
}
