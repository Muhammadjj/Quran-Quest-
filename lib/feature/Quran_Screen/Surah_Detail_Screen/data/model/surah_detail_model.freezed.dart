// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahDetailModel _$SurahDetailModelFromJson(Map<String, dynamic> json) {
  return _SurahDetailModel.fromJson(json);
}

/// @nodoc
mixin _$SurahDetailModel {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  SurahData get data => throw _privateConstructorUsedError;

  /// Serializes this SurahDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahDetailModelCopyWith<SurahDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahDetailModelCopyWith<$Res> {
  factory $SurahDetailModelCopyWith(
          SurahDetailModel value, $Res Function(SurahDetailModel) then) =
      _$SurahDetailModelCopyWithImpl<$Res, SurahDetailModel>;
  @useResult
  $Res call({int code, String status, SurahData data});

  $SurahDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SurahDetailModelCopyWithImpl<$Res, $Val extends SurahDetailModel>
    implements $SurahDetailModelCopyWith<$Res> {
  _$SurahDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahDetailModel
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
              as SurahData,
    ) as $Val);
  }

  /// Create a copy of SurahDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahDataCopyWith<$Res> get data {
    return $SurahDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahDetailModelImplCopyWith<$Res>
    implements $SurahDetailModelCopyWith<$Res> {
  factory _$$SurahDetailModelImplCopyWith(_$SurahDetailModelImpl value,
          $Res Function(_$SurahDetailModelImpl) then) =
      __$$SurahDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, SurahData data});

  @override
  $SurahDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SurahDetailModelImplCopyWithImpl<$Res>
    extends _$SurahDetailModelCopyWithImpl<$Res, _$SurahDetailModelImpl>
    implements _$$SurahDetailModelImplCopyWith<$Res> {
  __$$SurahDetailModelImplCopyWithImpl(_$SurahDetailModelImpl _value,
      $Res Function(_$SurahDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$SurahDetailModelImpl(
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
              as SurahData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahDetailModelImpl implements _SurahDetailModel {
  const _$SurahDetailModelImpl(
      {required this.code, required this.status, required this.data});

  factory _$SurahDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahDetailModelImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final SurahData data;

  @override
  String toString() {
    return 'SurahDetailModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahDetailModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  /// Create a copy of SurahDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahDetailModelImplCopyWith<_$SurahDetailModelImpl> get copyWith =>
      __$$SurahDetailModelImplCopyWithImpl<_$SurahDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahDetailModelImplToJson(
      this,
    );
  }
}

abstract class _SurahDetailModel implements SurahDetailModel {
  const factory _SurahDetailModel(
      {required final int code,
      required final String status,
      required final SurahData data}) = _$SurahDetailModelImpl;

  factory _SurahDetailModel.fromJson(Map<String, dynamic> json) =
      _$SurahDetailModelImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  SurahData get data;

  /// Create a copy of SurahDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahDetailModelImplCopyWith<_$SurahDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurahData _$SurahDataFromJson(Map<String, dynamic> json) {
  return _SurahData.fromJson(json);
}

/// @nodoc
mixin _$SurahData {
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
  List<Ayah> get ayahs => throw _privateConstructorUsedError;
  Edition get edition => throw _privateConstructorUsedError;

  /// Serializes this SurahData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahDataCopyWith<SurahData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahDataCopyWith<$Res> {
  factory $SurahDataCopyWith(SurahData value, $Res Function(SurahData) then) =
      _$SurahDataCopyWithImpl<$Res, SurahData>;
  @useResult
  $Res call(
      {int number,
      String name,
      @JsonKey(name: 'englishName') String englishName,
      @JsonKey(name: 'englishNameTranslation') String englishNameTranslation,
      @JsonKey(name: 'revelationType') String revelationType,
      @JsonKey(name: 'numberOfAyahs') int numberOfAyahs,
      List<Ayah> ayahs,
      Edition edition});

  $EditionCopyWith<$Res> get edition;
}

/// @nodoc
class _$SurahDataCopyWithImpl<$Res, $Val extends SurahData>
    implements $SurahDataCopyWith<$Res> {
  _$SurahDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahData
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
    Object? ayahs = null,
    Object? edition = null,
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
      ayahs: null == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayah>,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition,
    ) as $Val);
  }

  /// Create a copy of SurahData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditionCopyWith<$Res> get edition {
    return $EditionCopyWith<$Res>(_value.edition, (value) {
      return _then(_value.copyWith(edition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahDataImplCopyWith<$Res>
    implements $SurahDataCopyWith<$Res> {
  factory _$$SurahDataImplCopyWith(
          _$SurahDataImpl value, $Res Function(_$SurahDataImpl) then) =
      __$$SurahDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String name,
      @JsonKey(name: 'englishName') String englishName,
      @JsonKey(name: 'englishNameTranslation') String englishNameTranslation,
      @JsonKey(name: 'revelationType') String revelationType,
      @JsonKey(name: 'numberOfAyahs') int numberOfAyahs,
      List<Ayah> ayahs,
      Edition edition});

  @override
  $EditionCopyWith<$Res> get edition;
}

/// @nodoc
class __$$SurahDataImplCopyWithImpl<$Res>
    extends _$SurahDataCopyWithImpl<$Res, _$SurahDataImpl>
    implements _$$SurahDataImplCopyWith<$Res> {
  __$$SurahDataImplCopyWithImpl(
      _$SurahDataImpl _value, $Res Function(_$SurahDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahData
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
    Object? ayahs = null,
    Object? edition = null,
  }) {
    return _then(_$SurahDataImpl(
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
      ayahs: null == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayah>,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahDataImpl implements _SurahData {
  const _$SurahDataImpl(
      {required this.number,
      required this.name,
      @JsonKey(name: 'englishName') required this.englishName,
      @JsonKey(name: 'englishNameTranslation')
      required this.englishNameTranslation,
      @JsonKey(name: 'revelationType') required this.revelationType,
      @JsonKey(name: 'numberOfAyahs') required this.numberOfAyahs,
      required final List<Ayah> ayahs,
      required this.edition})
      : _ayahs = ayahs;

  factory _$SurahDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahDataImplFromJson(json);

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
  final List<Ayah> _ayahs;
  @override
  List<Ayah> get ayahs {
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayahs);
  }

  @override
  final Edition edition;

  @override
  String toString() {
    return 'SurahData(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs, ayahs: $ayahs, edition: $edition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahDataImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs) &&
            (identical(other.edition, edition) || other.edition == edition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      name,
      englishName,
      englishNameTranslation,
      revelationType,
      numberOfAyahs,
      const DeepCollectionEquality().hash(_ayahs),
      edition);

  /// Create a copy of SurahData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahDataImplCopyWith<_$SurahDataImpl> get copyWith =>
      __$$SurahDataImplCopyWithImpl<_$SurahDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahDataImplToJson(
      this,
    );
  }
}

abstract class _SurahData implements SurahData {
  const factory _SurahData(
      {required final int number,
      required final String name,
      @JsonKey(name: 'englishName') required final String englishName,
      @JsonKey(name: 'englishNameTranslation')
      required final String englishNameTranslation,
      @JsonKey(name: 'revelationType') required final String revelationType,
      @JsonKey(name: 'numberOfAyahs') required final int numberOfAyahs,
      required final List<Ayah> ayahs,
      required final Edition edition}) = _$SurahDataImpl;

  factory _SurahData.fromJson(Map<String, dynamic> json) =
      _$SurahDataImpl.fromJson;

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
  @override
  List<Ayah> get ayahs;
  @override
  Edition get edition;

  /// Create a copy of SurahData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahDataImplCopyWith<_$SurahDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ayah _$AyahFromJson(Map<String, dynamic> json) {
  return _Ayah.fromJson(json);
}

/// @nodoc
mixin _$Ayah {
  int get number => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  @JsonKey(name: 'audioSecondary')
  List<String> get audioSecondaryUrls => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'numberInSurah')
  int get ayahNumber => throw _privateConstructorUsedError;
  int get juz => throw _privateConstructorUsedError;
  int get manzil => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get ruku => throw _privateConstructorUsedError;
  @JsonKey(name: 'hizbQuarter')
  int get hizbQuarter => throw _privateConstructorUsedError;
  bool get sajda => throw _privateConstructorUsedError;

  /// Serializes this Ayah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyahCopyWith<Ayah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahCopyWith<$Res> {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) then) =
      _$AyahCopyWithImpl<$Res, Ayah>;
  @useResult
  $Res call(
      {int number,
      String audio,
      @JsonKey(name: 'audioSecondary') List<String> audioSecondaryUrls,
      String text,
      @JsonKey(name: 'numberInSurah') int ayahNumber,
      int juz,
      int manzil,
      int page,
      int ruku,
      @JsonKey(name: 'hizbQuarter') int hizbQuarter,
      bool sajda});
}

/// @nodoc
class _$AyahCopyWithImpl<$Res, $Val extends Ayah>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? audio = null,
    Object? audioSecondaryUrls = null,
    Object? text = null,
    Object? ayahNumber = null,
    Object? juz = null,
    Object? manzil = null,
    Object? page = null,
    Object? ruku = null,
    Object? hizbQuarter = null,
    Object? sajda = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      audioSecondaryUrls: null == audioSecondaryUrls
          ? _value.audioSecondaryUrls
          : audioSecondaryUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      ayahNumber: null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      juz: null == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int,
      manzil: null == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      ruku: null == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int,
      hizbQuarter: null == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int,
      sajda: null == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahImplCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$$AyahImplCopyWith(
          _$AyahImpl value, $Res Function(_$AyahImpl) then) =
      __$$AyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String audio,
      @JsonKey(name: 'audioSecondary') List<String> audioSecondaryUrls,
      String text,
      @JsonKey(name: 'numberInSurah') int ayahNumber,
      int juz,
      int manzil,
      int page,
      int ruku,
      @JsonKey(name: 'hizbQuarter') int hizbQuarter,
      bool sajda});
}

/// @nodoc
class __$$AyahImplCopyWithImpl<$Res>
    extends _$AyahCopyWithImpl<$Res, _$AyahImpl>
    implements _$$AyahImplCopyWith<$Res> {
  __$$AyahImplCopyWithImpl(_$AyahImpl _value, $Res Function(_$AyahImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? audio = null,
    Object? audioSecondaryUrls = null,
    Object? text = null,
    Object? ayahNumber = null,
    Object? juz = null,
    Object? manzil = null,
    Object? page = null,
    Object? ruku = null,
    Object? hizbQuarter = null,
    Object? sajda = null,
  }) {
    return _then(_$AyahImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      audioSecondaryUrls: null == audioSecondaryUrls
          ? _value._audioSecondaryUrls
          : audioSecondaryUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      ayahNumber: null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      juz: null == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int,
      manzil: null == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      ruku: null == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int,
      hizbQuarter: null == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int,
      sajda: null == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahImpl implements _Ayah {
  const _$AyahImpl(
      {required this.number,
      required this.audio,
      @JsonKey(name: 'audioSecondary')
      required final List<String> audioSecondaryUrls,
      required this.text,
      @JsonKey(name: 'numberInSurah') required this.ayahNumber,
      required this.juz,
      required this.manzil,
      required this.page,
      required this.ruku,
      @JsonKey(name: 'hizbQuarter') required this.hizbQuarter,
      required this.sajda})
      : _audioSecondaryUrls = audioSecondaryUrls;

  factory _$AyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahImplFromJson(json);

  @override
  final int number;
  @override
  final String audio;
  final List<String> _audioSecondaryUrls;
  @override
  @JsonKey(name: 'audioSecondary')
  List<String> get audioSecondaryUrls {
    if (_audioSecondaryUrls is EqualUnmodifiableListView)
      return _audioSecondaryUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioSecondaryUrls);
  }

  @override
  final String text;
  @override
  @JsonKey(name: 'numberInSurah')
  final int ayahNumber;
  @override
  final int juz;
  @override
  final int manzil;
  @override
  final int page;
  @override
  final int ruku;
  @override
  @JsonKey(name: 'hizbQuarter')
  final int hizbQuarter;
  @override
  final bool sajda;

  @override
  String toString() {
    return 'Ayah(number: $number, audio: $audio, audioSecondaryUrls: $audioSecondaryUrls, text: $text, ayahNumber: $ayahNumber, juz: $juz, manzil: $manzil, page: $page, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            const DeepCollectionEquality()
                .equals(other._audioSecondaryUrls, _audioSecondaryUrls) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.juz, juz) || other.juz == juz) &&
            (identical(other.manzil, manzil) || other.manzil == manzil) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.ruku, ruku) || other.ruku == ruku) &&
            (identical(other.hizbQuarter, hizbQuarter) ||
                other.hizbQuarter == hizbQuarter) &&
            (identical(other.sajda, sajda) || other.sajda == sajda));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      audio,
      const DeepCollectionEquality().hash(_audioSecondaryUrls),
      text,
      ayahNumber,
      juz,
      manzil,
      page,
      ruku,
      hizbQuarter,
      sajda);

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      __$$AyahImplCopyWithImpl<_$AyahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahImplToJson(
      this,
    );
  }
}

abstract class _Ayah implements Ayah {
  const factory _Ayah(
      {required final int number,
      required final String audio,
      @JsonKey(name: 'audioSecondary')
      required final List<String> audioSecondaryUrls,
      required final String text,
      @JsonKey(name: 'numberInSurah') required final int ayahNumber,
      required final int juz,
      required final int manzil,
      required final int page,
      required final int ruku,
      @JsonKey(name: 'hizbQuarter') required final int hizbQuarter,
      required final bool sajda}) = _$AyahImpl;

  factory _Ayah.fromJson(Map<String, dynamic> json) = _$AyahImpl.fromJson;

  @override
  int get number;
  @override
  String get audio;
  @override
  @JsonKey(name: 'audioSecondary')
  List<String> get audioSecondaryUrls;
  @override
  String get text;
  @override
  @JsonKey(name: 'numberInSurah')
  int get ayahNumber;
  @override
  int get juz;
  @override
  int get manzil;
  @override
  int get page;
  @override
  int get ruku;
  @override
  @JsonKey(name: 'hizbQuarter')
  int get hizbQuarter;
  @override
  bool get sajda;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Edition _$EditionFromJson(Map<String, dynamic> json) {
  return _Edition.fromJson(json);
}

/// @nodoc
mixin _$Edition {
  String get identifier => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'englishName')
  String get englishName => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  dynamic get direction => throw _privateConstructorUsedError;

  /// Serializes this Edition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Edition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditionCopyWith<Edition> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditionCopyWith<$Res> {
  factory $EditionCopyWith(Edition value, $Res Function(Edition) then) =
      _$EditionCopyWithImpl<$Res, Edition>;
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      @JsonKey(name: 'englishName') String englishName,
      String format,
      String type,
      dynamic direction});
}

/// @nodoc
class _$EditionCopyWithImpl<$Res, $Val extends Edition>
    implements $EditionCopyWith<$Res> {
  _$EditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Edition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
    Object? direction = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditionImplCopyWith<$Res> implements $EditionCopyWith<$Res> {
  factory _$$EditionImplCopyWith(
          _$EditionImpl value, $Res Function(_$EditionImpl) then) =
      __$$EditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      @JsonKey(name: 'englishName') String englishName,
      String format,
      String type,
      dynamic direction});
}

/// @nodoc
class __$$EditionImplCopyWithImpl<$Res>
    extends _$EditionCopyWithImpl<$Res, _$EditionImpl>
    implements _$$EditionImplCopyWith<$Res> {
  __$$EditionImplCopyWithImpl(
      _$EditionImpl _value, $Res Function(_$EditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Edition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
    Object? direction = freezed,
  }) {
    return _then(_$EditionImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditionImpl implements _Edition {
  const _$EditionImpl(
      {required this.identifier,
      required this.language,
      required this.name,
      @JsonKey(name: 'englishName') required this.englishName,
      required this.format,
      required this.type,
      required this.direction});

  factory _$EditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditionImplFromJson(json);

  @override
  final String identifier;
  @override
  final String language;
  @override
  final String name;
  @override
  @JsonKey(name: 'englishName')
  final String englishName;
  @override
  final String format;
  @override
  final String type;
  @override
  final dynamic direction;

  @override
  String toString() {
    return 'Edition(identifier: $identifier, language: $language, name: $name, englishName: $englishName, format: $format, type: $type, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditionImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.direction, direction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      identifier,
      language,
      name,
      englishName,
      format,
      type,
      const DeepCollectionEquality().hash(direction));

  /// Create a copy of Edition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditionImplCopyWith<_$EditionImpl> get copyWith =>
      __$$EditionImplCopyWithImpl<_$EditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditionImplToJson(
      this,
    );
  }
}

abstract class _Edition implements Edition {
  const factory _Edition(
      {required final String identifier,
      required final String language,
      required final String name,
      @JsonKey(name: 'englishName') required final String englishName,
      required final String format,
      required final String type,
      required final dynamic direction}) = _$EditionImpl;

  factory _Edition.fromJson(Map<String, dynamic> json) = _$EditionImpl.fromJson;

  @override
  String get identifier;
  @override
  String get language;
  @override
  String get name;
  @override
  @JsonKey(name: 'englishName')
  String get englishName;
  @override
  String get format;
  @override
  String get type;
  @override
  dynamic get direction;

  /// Create a copy of Edition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditionImplCopyWith<_$EditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
