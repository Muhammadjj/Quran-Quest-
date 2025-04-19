// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_flash_cards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranFlashCardModel _$QuranFlashCardModelFromJson(Map<String, dynamic> json) {
  return _QuranFlashCardModel.fromJson(json);
}

/// @nodoc
mixin _$QuranFlashCardModel {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<SurahData> get data => throw _privateConstructorUsedError;

  /// Serializes this QuranFlashCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuranFlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranFlashCardModelCopyWith<QuranFlashCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranFlashCardModelCopyWith<$Res> {
  factory $QuranFlashCardModelCopyWith(
          QuranFlashCardModel value, $Res Function(QuranFlashCardModel) then) =
      _$QuranFlashCardModelCopyWithImpl<$Res, QuranFlashCardModel>;
  @useResult
  $Res call({int code, String status, List<SurahData> data});
}

/// @nodoc
class _$QuranFlashCardModelCopyWithImpl<$Res, $Val extends QuranFlashCardModel>
    implements $QuranFlashCardModelCopyWith<$Res> {
  _$QuranFlashCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranFlashCardModel
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
              as List<SurahData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranFlashCardModelImplCopyWith<$Res>
    implements $QuranFlashCardModelCopyWith<$Res> {
  factory _$$QuranFlashCardModelImplCopyWith(_$QuranFlashCardModelImpl value,
          $Res Function(_$QuranFlashCardModelImpl) then) =
      __$$QuranFlashCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, List<SurahData> data});
}

/// @nodoc
class __$$QuranFlashCardModelImplCopyWithImpl<$Res>
    extends _$QuranFlashCardModelCopyWithImpl<$Res, _$QuranFlashCardModelImpl>
    implements _$$QuranFlashCardModelImplCopyWith<$Res> {
  __$$QuranFlashCardModelImplCopyWithImpl(_$QuranFlashCardModelImpl _value,
      $Res Function(_$QuranFlashCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranFlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$QuranFlashCardModelImpl(
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
              as List<SurahData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$QuranFlashCardModelImpl implements _QuranFlashCardModel {
  const _$QuranFlashCardModelImpl(
      {required this.code,
      required this.status,
      required final List<SurahData> data})
      : _data = data;

  factory _$QuranFlashCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranFlashCardModelImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  final List<SurahData> _data;
  @override
  List<SurahData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'QuranFlashCardModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranFlashCardModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, status, const DeepCollectionEquality().hash(_data));

  /// Create a copy of QuranFlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranFlashCardModelImplCopyWith<_$QuranFlashCardModelImpl> get copyWith =>
      __$$QuranFlashCardModelImplCopyWithImpl<_$QuranFlashCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranFlashCardModelImplToJson(
      this,
    );
  }
}

abstract class _QuranFlashCardModel implements QuranFlashCardModel {
  const factory _QuranFlashCardModel(
      {required final int code,
      required final String status,
      required final List<SurahData> data}) = _$QuranFlashCardModelImpl;

  factory _QuranFlashCardModel.fromJson(Map<String, dynamic> json) =
      _$QuranFlashCardModelImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  List<SurahData> get data;

  /// Create a copy of QuranFlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranFlashCardModelImplCopyWith<_$QuranFlashCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurahData _$SurahDataFromJson(Map<String, dynamic> json) {
  return _SurahData.fromJson(json);
}

/// @nodoc
mixin _$SurahData {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get englishNameTranslation => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
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
      String englishName,
      String englishNameTranslation,
      String revelationType,
      int numberOfAyahs,
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
      String englishName,
      String englishNameTranslation,
      String revelationType,
      int numberOfAyahs,
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

@JsonSerializable(explicitToJson: true)
class _$SurahDataImpl implements _SurahData {
  const _$SurahDataImpl(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.englishNameTranslation,
      required this.revelationType,
      required this.numberOfAyahs,
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
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  @override
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
      required final String englishName,
      required final String englishNameTranslation,
      required final String revelationType,
      required final int numberOfAyahs,
      required final List<Ayah> ayahs,
      required final Edition edition}) = _$SurahDataImpl;

  factory _SurahData.fromJson(Map<String, dynamic> json) =
      _$SurahDataImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get englishNameTranslation;
  @override
  String get revelationType;
  @override
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
  String get text => throw _privateConstructorUsedError;
  int get numberInSurah => throw _privateConstructorUsedError;
  int get juz => throw _privateConstructorUsedError;
  int get manzil => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get ruku => throw _privateConstructorUsedError;
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
      String text,
      int numberInSurah,
      int juz,
      int manzil,
      int page,
      int ruku,
      int hizbQuarter,
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
    Object? text = null,
    Object? numberInSurah = null,
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
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      numberInSurah: null == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
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
      String text,
      int numberInSurah,
      int juz,
      int manzil,
      int page,
      int ruku,
      int hizbQuarter,
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
    Object? text = null,
    Object? numberInSurah = null,
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
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      numberInSurah: null == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(explicitToJson: true)
class _$AyahImpl implements _Ayah {
  const _$AyahImpl(
      {required this.number,
      required this.text,
      required this.numberInSurah,
      required this.juz,
      required this.manzil,
      required this.page,
      required this.ruku,
      required this.hizbQuarter,
      required this.sajda});

  factory _$AyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahImplFromJson(json);

  @override
  final int number;
  @override
  final String text;
  @override
  final int numberInSurah;
  @override
  final int juz;
  @override
  final int manzil;
  @override
  final int page;
  @override
  final int ruku;
  @override
  final int hizbQuarter;
  @override
  final bool sajda;

  @override
  String toString() {
    return 'Ayah(number: $number, text: $text, numberInSurah: $numberInSurah, juz: $juz, manzil: $manzil, page: $page, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.numberInSurah, numberInSurah) ||
                other.numberInSurah == numberInSurah) &&
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
  int get hashCode => Object.hash(runtimeType, number, text, numberInSurah, juz,
      manzil, page, ruku, hizbQuarter, sajda);

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
      required final String text,
      required final int numberInSurah,
      required final int juz,
      required final int manzil,
      required final int page,
      required final int ruku,
      required final int hizbQuarter,
      required final bool sajda}) = _$AyahImpl;

  factory _Ayah.fromJson(Map<String, dynamic> json) = _$AyahImpl.fromJson;

  @override
  int get number;
  @override
  String get text;
  @override
  int get numberInSurah;
  @override
  int get juz;
  @override
  int get manzil;
  @override
  int get page;
  @override
  int get ruku;
  @override
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
  String get englishName => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;

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
      String englishName,
      String format,
      String type,
      String direction});
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
    Object? direction = null,
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
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
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
      String englishName,
      String format,
      String type,
      String direction});
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
    Object? direction = null,
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
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EditionImpl implements _Edition {
  const _$EditionImpl(
      {required this.identifier,
      required this.language,
      required this.name,
      required this.englishName,
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
  final String englishName;
  @override
  final String format;
  @override
  final String type;
  @override
  final String direction;

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
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, language, name,
      englishName, format, type, direction);

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
      required final String englishName,
      required final String format,
      required final String type,
      required final String direction}) = _$EditionImpl;

  factory _Edition.fromJson(Map<String, dynamic> json) = _$EditionImpl.fromJson;

  @override
  String get identifier;
  @override
  String get language;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get format;
  @override
  String get type;
  @override
  String get direction;

  /// Create a copy of Edition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditionImplCopyWith<_$EditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
