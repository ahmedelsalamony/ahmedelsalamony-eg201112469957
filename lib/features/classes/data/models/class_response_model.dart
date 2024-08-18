// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_response_model.freezed.dart';
part 'class_response_model.g.dart';

@freezed
class ClassResponseModel with _$ClassResponseModel {
  factory ClassResponseModel({
    required String id,
    required String name,
    required String name_ar,
    required String name_en,
    required String grade_id,
    required String school_id,
  }) = _ClassResponseModel;

  factory ClassResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ClassResponseModelFromJson(json);
}
