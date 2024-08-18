// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassResponseModelImpl _$$ClassResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassResponseModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      name_ar: json['name_ar'] as String,
      name_en: json['name_en'] as String,
      grade_id: json['grade_id'] as String,
      school_id: json['school_id'] as String,
    );

Map<String, dynamic> _$$ClassResponseModelImplToJson(
        _$ClassResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'name_en': instance.name_en,
      'grade_id': instance.grade_id,
      'school_id': instance.school_id,
    };
