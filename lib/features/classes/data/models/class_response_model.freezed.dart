// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassResponseModel _$ClassResponseModelFromJson(Map<String, dynamic> json) {
  return _ClassResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ClassResponseModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get name_ar => throw _privateConstructorUsedError;
  String get name_en => throw _privateConstructorUsedError;
  String get grade_id => throw _privateConstructorUsedError;
  String get school_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassResponseModelCopyWith<ClassResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassResponseModelCopyWith<$Res> {
  factory $ClassResponseModelCopyWith(
          ClassResponseModel value, $Res Function(ClassResponseModel) then) =
      _$ClassResponseModelCopyWithImpl<$Res, ClassResponseModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String name_ar,
      String name_en,
      String grade_id,
      String school_id});
}

/// @nodoc
class _$ClassResponseModelCopyWithImpl<$Res, $Val extends ClassResponseModel>
    implements $ClassResponseModelCopyWith<$Res> {
  _$ClassResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? name_ar = null,
    Object? name_en = null,
    Object? grade_id = null,
    Object? school_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name_ar: null == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String,
      name_en: null == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
      grade_id: null == grade_id
          ? _value.grade_id
          : grade_id // ignore: cast_nullable_to_non_nullable
              as String,
      school_id: null == school_id
          ? _value.school_id
          : school_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassResponseModelImplCopyWith<$Res>
    implements $ClassResponseModelCopyWith<$Res> {
  factory _$$ClassResponseModelImplCopyWith(_$ClassResponseModelImpl value,
          $Res Function(_$ClassResponseModelImpl) then) =
      __$$ClassResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String name_ar,
      String name_en,
      String grade_id,
      String school_id});
}

/// @nodoc
class __$$ClassResponseModelImplCopyWithImpl<$Res>
    extends _$ClassResponseModelCopyWithImpl<$Res, _$ClassResponseModelImpl>
    implements _$$ClassResponseModelImplCopyWith<$Res> {
  __$$ClassResponseModelImplCopyWithImpl(_$ClassResponseModelImpl _value,
      $Res Function(_$ClassResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? name_ar = null,
    Object? name_en = null,
    Object? grade_id = null,
    Object? school_id = null,
  }) {
    return _then(_$ClassResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name_ar: null == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String,
      name_en: null == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
      grade_id: null == grade_id
          ? _value.grade_id
          : grade_id // ignore: cast_nullable_to_non_nullable
              as String,
      school_id: null == school_id
          ? _value.school_id
          : school_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassResponseModelImpl implements _ClassResponseModel {
  _$ClassResponseModelImpl(
      {required this.id,
      required this.name,
      required this.name_ar,
      required this.name_en,
      required this.grade_id,
      required this.school_id});

  factory _$ClassResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassResponseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String name_ar;
  @override
  final String name_en;
  @override
  final String grade_id;
  @override
  final String school_id;

  @override
  String toString() {
    return 'ClassResponseModel(id: $id, name: $name, name_ar: $name_ar, name_en: $name_en, grade_id: $grade_id, school_id: $school_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.grade_id, grade_id) ||
                other.grade_id == grade_id) &&
            (identical(other.school_id, school_id) ||
                other.school_id == school_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, name_ar, name_en, grade_id, school_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassResponseModelImplCopyWith<_$ClassResponseModelImpl> get copyWith =>
      __$$ClassResponseModelImplCopyWithImpl<_$ClassResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ClassResponseModel implements ClassResponseModel {
  factory _ClassResponseModel(
      {required final String id,
      required final String name,
      required final String name_ar,
      required final String name_en,
      required final String grade_id,
      required final String school_id}) = _$ClassResponseModelImpl;

  factory _ClassResponseModel.fromJson(Map<String, dynamic> json) =
      _$ClassResponseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get name_ar;
  @override
  String get name_en;
  @override
  String get grade_id;
  @override
  String get school_id;
  @override
  @JsonKey(ignore: true)
  _$$ClassResponseModelImplCopyWith<_$ClassResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
