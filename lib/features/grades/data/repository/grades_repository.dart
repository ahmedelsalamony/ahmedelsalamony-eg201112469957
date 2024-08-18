// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../common/network/api_service.dart';
import '../../../../core/api_config.dart';
import '../../../../core/app_failure.dart';
import '../models/grade_response_model.dart';

class GradesRepository {
  final ApiService apiService;

  GradesRepository({required this.apiService});

  Future<Either<AppFailure, List<GradeModel>>> getGradesIndex() async {
    List<dynamic> data;
    try {
      data = await apiService.getList(
        endPoint: ApiConfig.gradesIndex,
      );
      final grades = data
          .map((json) => GradeModel.fromJson(json as Map<String, dynamic>))
          .toList();
      return right(grades);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  Future<Either<AppFailure, GradeModel>> showGrade(
      {required String gradeId}) async {
    dynamic data;
    try {
      data = await apiService.get(
        endPoint: '${ApiConfig.showGrade}$gradeId',
      );
      return right(GradeModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  Future<Either<AppFailure, GradeModel>> addGrade({
    required String schoolId,
    required String name_ar,
    required String name_en,
  }) async {
    dynamic response;
    try {
      response = await apiService.post(
        endPoint: ApiConfig.addGrade,
        data: {"school_id": schoolId, "name_ar": name_ar, "name_en": name_en},
      );
      return right(GradeModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }

      return left(
        ServerFailure(
          "${AddGradeErrorResponse.fromJson(response).errors.name_ar[0]} \n ${AddGradeErrorResponse.fromJson(response).errors.name_en[0]}",
        ),
      );
    }
  }

  Future<Either<AppFailure, GradeModel>> updateGrade({
    required String gradeId,
    required String name_ar,
    required String name_en,
  }) async {
    dynamic response;
    try {
      response = await apiService.put(
        endPoint: ApiConfig.updateGrade.replaceAll(
          "{id}",
          gradeId,
        ),
        data: {"name_ar": name_ar, "name_en": name_en},
      );
      return right(GradeModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          "The name ar has already been taken",
        ),
      );
    }
  }

  Future<Either<AppFailure, bool>> deleteGrade(
      {required String gradeId}) async {
    Response response;
    try {
      response = await apiService.delete(
        endPoint: ApiConfig.deleteGrade.replaceAll("{id}", gradeId),
      );
      if (response.statusCode == 204) {
        return right(true);
      } else {
        return right(false);
      }
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
