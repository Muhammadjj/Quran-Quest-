// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranSurahResponseModel _$QuranSurahResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuranSurahResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuranSurahResponseModel {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<QuranSurahModel> get data => throw _privateConstructorUsedError;

  /// Serializes this QuranSurahResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuranSurahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranSurahResponseModelCopyWith<QuranSurahResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranSurahResponseModelCopyWith<$Res> {
  factory $QuranSurahResponseModelCopyWith(QuranSurahResponseModel value,
          $Res Function(QuranSurahResponseModel) then) =
      _$QuranSurahResponseModelCopyWithImpl<$Res, QuranSurahResponseModel>;
  @useResult
  $Res call({int code, String status, List<QuranSurahModel> data});
}

/// @nodoc
class _$QuranSurahResponseModelCopyWithImpl<$Res,
        $Val extends QuranSurahResponseModel>
    implements $QuranSurahResponseModelCopyWith<$Res> {
  _$QuranSurahResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranSurahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<QuranSurahModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranSurahResponseModelImplCopyWith<$Res>
    implements $QuranSurahResponseModelCopyWith<$Res> {
  factory _$$QuranSurahResponseModelImplCopyWith(
          _$QuranSurahResponseModelImpl value,
          $Res Function(_$QuranSurahResponseModelImpl) then) =
      __$$QuranSurahResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, List<QuranSurahModel> data});
}

/// @nodoc
class __$$QuranSurahResponseModelImplCopyWithImpl<$Res>
    extends _$QuranSurahResponseModelCopyWithImpl<$Res,
        _$QuranSurahResponseModelImpl>
    implements _$$QuranSurahResponseModelImplCopyWith<$Res> {
  __$$QuranSurahResponseModelImplCopyWithImpl(
      _$QuranSurahResponseModelImpl _value,
      $Res Function(_$QuranSurahResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranSurahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$QuranSurahResponseModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<QuranSurahModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranSurahResponseModelImpl implements _QuranSurahResponseModel {
  _$QuranSurahResponseModelImpl(
      {required this.code,
      required this.status,
      required final List<QuranSurahModel> data})
      : _data = data;

  factory _$QuranSurahResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranSurahResponseModelImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  final List<QuranSurahModel> _data;
  @override
  List<QuranSurahModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'QuranSurahResponseModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranSurahResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, status, const DeepCollectionEquality().hash(_data));

  /// Create a copy of QuranSurahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranSurahResponseModelImplCopyWith<_$QuranSurahResponseModelImpl>
      get copyWith => __$$QuranSurahResponseModelImplCopyWithImpl<
          _$QuranSurahResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranSurahResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QuranSurahResponseModel implements QuranSurahResponseModel {
  factory _QuranSurahResponseModel(
          {required final int code,
          required final String status,
          required final List<QuranSurahModel> data}) =
      _$QuranSurahResponseModelImpl;

  factory _QuranSurahResponseModel.fromJson(Map<String, dynamic> json) =
      _$QuranSurahResponseModelImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  List<QuranSurahModel> get data;

  /// Create a copy of QuranSurahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranSurahResponseModelImplCopyWith<_$QuranSurahResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuranSurahModel _$QuranSurahModelFromJson(Map<String, dynamic> json) {
  return _QuranSurahModel.fromJson(json);
}

/// @nodoc
mixin _$QuranSurahModel {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'englishName')
  String get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'englishNameTranslation')
  String get englishNameTranslation => throw _privateConstructorUsedError;
  @JsonKey(name: 'revelationType')
  String get revelationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'numberOfAyahs')
  int get numberOfAyahs => throw _privateConstructorUsedError;

  /// Serializes this QuranSurahModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuranSurahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranSurahModelCopyWith<QuranSurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranSurahModelCopyWith<$Res> {
  factory $QuranSurahModelCopyWith(
          QuranSurahModel value, $Res Function(QuranSurahModel) then) =
      _$QuranSurahModelCopyWithImpl<$Res, QuranSurahModel>;
  @useResult
  $Res call(
      {int number,
      String name,
      @JsonKey(name: 'englishName') String englishName,
      @JsonKey(name: 'englishNameTranslation') String englishNameTranslation,
      @JsonKey(name: 'revelationType') String revelationType,
      @JsonKey(name: 'numberOfAyahs') int numberOfAyahs});
}

/// @nodoc
class _$QuranSurahModelCopyWithImpl<$Res, $Val extends QuranSurahModel>
    implements $QuranSurahModelCopyWith<$Res> {
  _$QuranSurahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranSurahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranSurahModelImplCopyWith<$Res>
    implements $QuranSurahModelCopyWith<$Res> {
  factory _$$QuranSurahModelImplCopyWith(_$QuranSurahModelImpl value,
          $Res Function(_$QuranSurahModelImpl) then) =
      __$$QuranSurahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String name,
      @JsonKey(name: 'englishName') String englishName,
      @JsonKey(name: 'englishNameTranslation') String englishNameTranslation,
      @JsonKey(name: 'revelationType') String revelationType,
      @JsonKey(name: 'numberOfAyahs') int numberOfAyahs});
}

/// @nodoc
class __$$QuranSurahModelImplCopyWithImpl<$Res>
    extends _$QuranSurahModelCopyWithImpl<$Res, _$QuranSurahModelImpl>
    implements _$$QuranSurahModelImplCopyWith<$Res> {
  __$$QuranSurahModelImplCopyWithImpl(
      _$QuranSurahModelImpl _value, $Res Function(_$QuranSurahModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranSurahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
  }) {
    return _then(_$QuranSurahModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranSurahModelImpl implements _QuranSurahModel {
  _$QuranSurahModelImpl(
      {required this.number,
      required this.name,
      @JsonKey(name: 'englishName') required this.englishName,
      @JsonKey(name: 'englishNameTranslation')
      required this.englishNameTranslation,
      @JsonKey(name: 'revelationType') required this.revelationType,
      @JsonKey(name: 'numberOfAyahs') required this.numberOfAyahs});

  factory _$QuranSurahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranSurahModelImplFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  @JsonKey(name: 'englishName')
  final String englishName;
  @override
  @JsonKey(name: 'englishNameTranslation')
  final String englishNameTranslation;
  @override
  @JsonKey(name: 'revelationType')
  final String revelationType;
  @override
  @JsonKey(name: 'numberOfAyahs')
  final int numberOfAyahs;

  @override
  String toString() {
    return 'QuranSurahModel(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranSurahModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, englishName,
      englishNameTranslation, revelationType, numberOfAyahs);

  /// Create a copy of QuranSurahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranSurahModelImplCopyWith<_$QuranSurahModelImpl> get copyWith =>
      __$$QuranSurahModelImplCopyWithImpl<_$QuranSurahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranSurahModelImplToJson(
      this,
    );
  }
}

abstract class _QuranSurahModel implements QuranSurahModel {
  factory _QuranSurahModel(
          {required final int number,
          required final String name,
          @JsonKey(name: 'englishName') required final String englishName,
          @JsonKey(name: 'englishNameTranslation')
          required final String englishNameTranslation,
          @JsonKey(name: 'revelationType') required final String revelationType,
          @JsonKey(name: 'numberOfAyahs') required final int numberOfAyahs}) =
      _$QuranSurahModelImpl;

  factory _QuranSurahModel.fromJson(Map<String, dynamic> json) =
      _$QuranSurahModelImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  @JsonKey(name: 'englishName')
  String get englishName;
  @override
  @JsonKey(name: 'englishNameTranslation')
  String get englishNameTranslation;
  @override
  @JsonKey(name: 'revelationType')
  String get revelationType;
  @override
  @JsonKey(name: 'numberOfAyahs')
  int get numberOfAyahs;

  /// Create a copy of QuranSurahModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranSurahModelImplCopyWith<_$QuranSurahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
