// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eg201112469957/core/app_failure.dart';
import 'package:eg201112469957/features/classes/data/models/class_response_model.dart';

import '../../../../common/network/api_service.dart';
import '../../../../core/api_config.dart';
import '../../../grades/data/models/grade_response_model.dart';

class ClassesRepository {
  final ApiService apiService;
  ClassesRepository({required this.apiService});

  Future<Either<AppFailure, List<ClassResponseModel>>> getClasses() async {
    List<dynamic> data;
    try {
      data = await apiService.getList(
        endPoint: ApiConfig.classesIndex,
      );
      final classes = data
          .map((json) =>
              ClassResponseModel.fromJson(json as Map<String, dynamic>))
          .toList();
      return right(classes);
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

  Future<Either<AppFailure, bool>> deleteClass(
      {required String classId}) async {
    Response response;
    try {
      response = await apiService.delete(
        endPoint: ApiConfig.deleteClass.replaceAll("{id}", classId),
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

  Future<Either<AppFailure, ClassResponseModel>> showClass(
      {required String classId}) async {
    dynamic data;
    try {
      data = await apiService.get(
        endPoint: '${ApiConfig.showClass}$classId',
      );
      return right(ClassResponseModel.fromJson(data));
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

  Future<Either<AppFailure, ClassResponseModel>> addClass({
    required String schoolId,
    required String name_ar,
    required String name_en,
    required String gradeId,
  }) async {
    dynamic response;
    try {
      response = await apiService.post(
        endPoint: ApiConfig.addClass,
        data: {
          "grade_id": gradeId,
          "school_id": schoolId,
          "name_ar": name_ar,
          "name_en": name_en,
        },
      );
      return right(ClassResponseModel.fromJson(response));
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

  Future<Either<AppFailure, ClassResponseModel>> updateClass({
    required String gradeId,
    required String name_ar,
    required String name_en,
    required String schoolId,
    required String classId,
  }) async {
    dynamic response;
    try {
      response = await apiService.put(
        endPoint: ApiConfig.updateClass.replaceAll(
          "{classId}",
          classId,
        ),
        data: {
          "name_ar": name_ar,
          "name_en": name_en,
          "school_id": schoolId,
          "grade_id": gradeId,
        },
      );
      return right(ClassResponseModel.fromJson(response));
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
}
