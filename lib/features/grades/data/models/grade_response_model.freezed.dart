// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GradeModel _$GradeModelFromJson(Map<String, dynamic> json) {
  return _GradeModel.fromJson(json);
}

/// @nodoc
mixin _$GradeModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get name_ar => throw _privateConstructorUsedError;
  String get name_en => throw _privateConstructorUsedError;
  String get school_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradeModelCopyWith<GradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeModelCopyWith<$Res> {
  factory $GradeModelCopyWith(
          GradeModel value, $Res Function(GradeModel) then) =
      _$GradeModelCopyWithImpl<$Res, GradeModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String name_ar,
      String name_en,
      String school_id});
}

/// @nodoc
class _$GradeModelCopyWithImpl<$Res, $Val extends GradeModel>
    implements $GradeModelCopyWith<$Res> {
  _$GradeModelCopyWithImpl(this._value, this._then);

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
      school_id: null == school_id
          ? _value.school_id
          : school_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GradeModelImplCopyWith<$Res>
    implements $GradeModelCopyWith<$Res> {
  factory _$$GradeModelImplCopyWith(
          _$GradeModelImpl value, $Res Function(_$GradeModelImpl) then) =
      __$$GradeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String name_ar,
      String name_en,
      String school_id});
}

/// @nodoc
class __$$GradeModelImplCopyWithImpl<$Res>
    extends _$GradeModelCopyWithImpl<$Res, _$GradeModelImpl>
    implements _$$GradeModelImplCopyWith<$Res> {
  __$$GradeModelImplCopyWithImpl(
      _$GradeModelImpl _value, $Res Function(_$GradeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? name_ar = null,
    Object? name_en = null,
    Object? school_id = null,
  }) {
    return _then(_$GradeModelImpl(
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
      school_id: null == school_id
          ? _value.school_id
          : school_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GradeModelImpl implements _GradeModel {
  _$GradeModelImpl(
      {required this.id,
      required this.name,
      required this.name_ar,
      required this.name_en,
      required this.school_id});

  factory _$GradeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GradeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String name_ar;
  @override
  final String name_en;
  @override
  final String school_id;

  @override
  String toString() {
    return 'GradeModel(id: $id, name: $name, name_ar: $name_ar, name_en: $name_en, school_id: $school_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.school_id, school_id) ||
                other.school_id == school_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, name_ar, name_en, school_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GradeModelImplCopyWith<_$GradeModelImpl> get copyWith =>
      __$$GradeModelImplCopyWithImpl<_$GradeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GradeModelImplToJson(
      this,
    );
  }
}

abstract class _GradeModel implements GradeModel {
  factory _GradeModel(
      {required final String id,
      required final String name,
      required final String name_ar,
      required final String name_en,
      required final String school_id}) = _$GradeModelImpl;

  factory _GradeModel.fromJson(Map<String, dynamic> json) =
      _$GradeModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get name_ar;
  @override
  String get name_en;
  @override
  String get school_id;
  @override
  @JsonKey(ignore: true)
  _$$GradeModelImplCopyWith<_$GradeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddGradeErrorResponse _$AddGradeErrorResponseFromJson(
    Map<String, dynamic> json) {
  return _AddGradeErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$AddGradeErrorResponse {
  String get message => throw _privateConstructorUsedError;
  ErrorsModel get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddGradeErrorResponseCopyWith<AddGradeErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGradeErrorResponseCopyWith<$Res> {
  factory $AddGradeErrorResponseCopyWith(AddGradeErrorResponse value,
          $Res Function(AddGradeErrorResponse) then) =
      _$AddGradeErrorResponseCopyWithImpl<$Res, AddGradeErrorResponse>;
  @useResult
  $Res call({String message, ErrorsModel errors});

  $ErrorsModelCopyWith<$Res> get errors;
}

/// @nodoc
class _$AddGradeErrorResponseCopyWithImpl<$Res,
        $Val extends AddGradeErrorResponse>
    implements $AddGradeErrorResponseCopyWith<$Res> {
  _$AddGradeErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorsModelCopyWith<$Res> get errors {
    return $ErrorsModelCopyWith<$Res>(_value.errors, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddGradeErrorResponseImplCopyWith<$Res>
    implements $AddGradeErrorResponseCopyWith<$Res> {
  factory _$$AddGradeErrorResponseImplCopyWith(
          _$AddGradeErrorResponseImpl value,
          $Res Function(_$AddGradeErrorResponseImpl) then) =
      __$$AddGradeErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, ErrorsModel errors});

  @override
  $ErrorsModelCopyWith<$Res> get errors;
}

/// @nodoc
class __$$AddGradeErrorResponseImplCopyWithImpl<$Res>
    extends _$AddGradeErrorResponseCopyWithImpl<$Res,
        _$AddGradeErrorResponseImpl>
    implements _$$AddGradeErrorResponseImplCopyWith<$Res> {
  __$$AddGradeErrorResponseImplCopyWithImpl(_$AddGradeErrorResponseImpl _value,
      $Res Function(_$AddGradeErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_$AddGradeErrorResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddGradeErrorResponseImpl implements _AddGradeErrorResponse {
  _$AddGradeErrorResponseImpl({required this.message, required this.errors});

  factory _$AddGradeErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddGradeErrorResponseImplFromJson(json);

  @override
  final String message;
  @override
  final ErrorsModel errors;

  @override
  String toString() {
    return 'AddGradeErrorResponse(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGradeErrorResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGradeErrorResponseImplCopyWith<_$AddGradeErrorResponseImpl>
      get copyWith => __$$AddGradeErrorResponseImplCopyWithImpl<
          _$AddGradeErrorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddGradeErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _AddGradeErrorResponse implements AddGradeErrorResponse {
  factory _AddGradeErrorResponse(
      {required final String message,
      required final ErrorsModel errors}) = _$AddGradeErrorResponseImpl;

  factory _AddGradeErrorResponse.fromJson(Map<String, dynamic> json) =
      _$AddGradeErrorResponseImpl.fromJson;

  @override
  String get message;
  @override
  ErrorsModel get errors;
  @override
  @JsonKey(ignore: true)
  _$$AddGradeErrorResponseImplCopyWith<_$AddGradeErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ErrorsModel _$ErrorsModelFromJson(Map<String, dynamic> json) {
  return _ErrorsModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorsModel {
  List<String> get name_ar => throw _privateConstructorUsedError;
  List<String> get name_en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsModelCopyWith<ErrorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsModelCopyWith<$Res> {
  factory $ErrorsModelCopyWith(
          ErrorsModel value, $Res Function(ErrorsModel) then) =
      _$ErrorsModelCopyWithImpl<$Res, ErrorsModel>;
  @useResult
  $Res call({List<String> name_ar, List<String> name_en});
}

/// @nodoc
class _$ErrorsModelCopyWithImpl<$Res, $Val extends ErrorsModel>
    implements $ErrorsModelCopyWith<$Res> {
  _$ErrorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name_ar = null,
    Object? name_en = null,
  }) {
    return _then(_value.copyWith(
      name_ar: null == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name_en: null == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorsModelImplCopyWith<$Res>
    implements $ErrorsModelCopyWith<$Res> {
  factory _$$ErrorsModelImplCopyWith(
          _$ErrorsModelImpl value, $Res Function(_$ErrorsModelImpl) then) =
      __$$ErrorsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> name_ar, List<String> name_en});
}

/// @nodoc
class __$$ErrorsModelImplCopyWithImpl<$Res>
    extends _$ErrorsModelCopyWithImpl<$Res, _$ErrorsModelImpl>
    implements _$$ErrorsModelImplCopyWith<$Res> {
  __$$ErrorsModelImplCopyWithImpl(
      _$ErrorsModelImpl _value, $Res Function(_$ErrorsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name_ar = null,
    Object? name_en = null,
  }) {
    return _then(_$ErrorsModelImpl(
      name_ar: null == name_ar
          ? _value._name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name_en: null == name_en
          ? _value._name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorsModelImpl implements _ErrorsModel {
  _$ErrorsModelImpl(
      {required final List<String> name_ar,
      required final List<String> name_en})
      : _name_ar = name_ar,
        _name_en = name_en;

  factory _$ErrorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorsModelImplFromJson(json);

  final List<String> _name_ar;
  @override
  List<String> get name_ar {
    if (_name_ar is EqualUnmodifiableListView) return _name_ar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_name_ar);
  }

  final List<String> _name_en;
  @override
  List<String> get name_en {
    if (_name_en is EqualUnmodifiableListView) return _name_en;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_name_en);
  }

  @override
  String toString() {
    return 'ErrorsModel(name_ar: $name_ar, name_en: $name_en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorsModelImpl &&
            const DeepCollectionEquality().equals(other._name_ar, _name_ar) &&
            const DeepCollectionEquality().equals(other._name_en, _name_en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_name_ar),
      const DeepCollectionEquality().hash(_name_en));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorsModelImplCopyWith<_$ErrorsModelImpl> get copyWith =>
      __$$ErrorsModelImplCopyWithImpl<_$ErrorsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorsModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorsModel implements ErrorsModel {
  factory _ErrorsModel(
      {required final List<String> name_ar,
      required final List<String> name_en}) = _$ErrorsModelImpl;

  factory _ErrorsModel.fromJson(Map<String, dynamic> json) =
      _$ErrorsModelImpl.fromJson;

  @override
  List<String> get name_ar;
  @override
  List<String> get name_en;
  @override
  @JsonKey(ignore: true)
  _$$ErrorsModelImplCopyWith<_$ErrorsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
