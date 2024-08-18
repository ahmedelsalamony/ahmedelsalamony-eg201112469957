// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'grade_response_model.freezed.dart';
part 'grade_response_model.g.dart';

@freezed
class GradeModel with _$GradeModel {
  factory GradeModel({
    required String id,
    required String name,
    required String name_ar,
    required String name_en,
    required String school_id,
  }) = _GradeModel;

  factory GradeModel.fromJson(Map<String, dynamic> json) =>
      _$GradeModelFromJson(json);
}

@freezed
class AddGradeErrorResponse with _$AddGradeErrorResponse {
  factory AddGradeErrorResponse({
    required String message,
    required ErrorsModel errors,
  }) = _AddGradeErrorResponse;

  factory AddGradeErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$AddGradeErrorResponseFromJson(json);
}

@freezed
class ErrorsModel with _$ErrorsModel {
  factory ErrorsModel({
    required List<String> name_ar,
    required List<String> name_en,
  }) = _ErrorsModel;
  factory ErrorsModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorsModelFromJson(json);
}
