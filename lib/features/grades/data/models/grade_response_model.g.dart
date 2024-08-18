// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GradeModelImpl _$$GradeModelImplFromJson(Map<String, dynamic> json) =>
    _$GradeModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      name_ar: json['name_ar'] as String,
      name_en: json['name_en'] as String,
      school_id: json['school_id'] as String,
    );

Map<String, dynamic> _$$GradeModelImplToJson(_$GradeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'name_en': instance.name_en,
      'school_id': instance.school_id,
    };

_$AddGradeErrorResponseImpl _$$AddGradeErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddGradeErrorResponseImpl(
      message: json['message'] as String,
      errors: ErrorsModel.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddGradeErrorResponseImplToJson(
        _$AddGradeErrorResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };

_$ErrorsModelImpl _$$ErrorsModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorsModelImpl(
      name_ar:
          (json['name_ar'] as List<dynamic>).map((e) => e as String).toList(),
      name_en:
          (json['name_en'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ErrorsModelImplToJson(_$ErrorsModelImpl instance) =>
    <String, dynamic>{
      'name_ar': instance.name_ar,
      'name_en': instance.name_en,
    };
