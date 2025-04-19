// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_parah_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranParahResponseModel _$QuranParahResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuranParahResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuranParahResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this QuranParahResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuranParahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranParahResponseModelCopyWith<QuranParahResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranParahResponseModelCopyWith<$Res> {
  factory $QuranParahResponseModelCopyWith(QuranParahResponseModel value,
          $Res Function(QuranParahResponseModel) then) =
      _$QuranParahResponseModelCopyWithImpl<$Res, QuranParahResponseModel>;
  @useResult
  $Res call({int? code, String? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$QuranParahResponseModelCopyWithImpl<$Res,
        $Val extends QuranParahResponseModel>
    implements $QuranParahResponseModelCopyWith<$Res> {
  _$QuranParahResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranParahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of QuranParahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranParahResponseModelImplCopyWith<$Res>
    implements $QuranParahResponseModelCopyWith<$Res> {
  factory _$$QuranParahResponseModelImplCopyWith(
          _$QuranParahResponseModelImpl value,
          $Res Function(_$QuranParahResponseModelImpl) then) =
      __$$QuranParahResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$QuranParahResponseModelImplCopyWithImpl<$Res>
    extends _$QuranParahResponseModelCopyWithImpl<$Res,
        _$QuranParahResponseModelImpl>
    implements _$$QuranParahResponseModelImplCopyWith<$Res> {
  __$$QuranParahResponseModelImplCopyWithImpl(
      _$QuranParahResponseModelImpl _value,
      $Res Function(_$QuranParahResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranParahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$QuranParahResponseModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranParahResponseModelImpl implements _QuranParahResponseModel {
  _$QuranParahResponseModelImpl({this.code, this.status, this.data});

  factory _$QuranParahResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranParahResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'QuranParahResponseModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranParahResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  /// Create a copy of QuranParahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranParahResponseModelImplCopyWith<_$QuranParahResponseModelImpl>
      get copyWith => __$$QuranParahResponseModelImplCopyWithImpl<
          _$QuranParahResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranParahResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QuranParahResponseModel implements QuranParahResponseModel {
  factory _QuranParahResponseModel(
      {final int? code,
      final String? status,
      final Data? data}) = _$QuranParahResponseModelImpl;

  factory _QuranParahResponseModel.fromJson(Map<String, dynamic> json) =
      _$QuranParahResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  Data? get data;

  /// Create a copy of QuranParahResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranParahResponseModelImplCopyWith<_$QuranParahResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get number => throw _privateConstructorUsedError;
  List<Ayahs>? get ayahs => throw _privateConstructorUsedError;
  Surahs? get surahs => throw _privateConstructorUsedError;
  Edition? get edition => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int? number, List<Ayahs>? ayahs, Surahs? surahs, Edition? edition});

  $SurahsCopyWith<$Res>? get surahs;
  $EditionCopyWith<$Res>? get edition;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? ayahs = freezed,
    Object? surahs = freezed,
    Object? edition = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahs: freezed == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayahs>?,
      surahs: freezed == surahs
          ? _value.surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as Surahs?,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahsCopyWith<$Res>? get surahs {
    if (_value.surahs == null) {
      return null;
    }

    return $SurahsCopyWith<$Res>(_value.surahs!, (value) {
      return _then(_value.copyWith(surahs: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditionCopyWith<$Res>? get edition {
    if (_value.edition == null) {
      return null;
    }

    return $EditionCopyWith<$Res>(_value.edition!, (value) {
      return _then(_value.copyWith(edition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number, List<Ayahs>? ayahs, Surahs? surahs, Edition? edition});

  @override
  $SurahsCopyWith<$Res>? get surahs;
  @override
  $EditionCopyWith<$Res>? get edition;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? ayahs = freezed,
    Object? surahs = freezed,
    Object? edition = freezed,
  }) {
    return _then(_$DataImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahs: freezed == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayahs>?,
      surahs: freezed == surahs
          ? _value.surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as Surahs?,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl({this.number, final List<Ayahs>? ayahs, this.surahs, this.edition})
      : _ayahs = ayahs;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final int? number;
  final List<Ayahs>? _ayahs;
  @override
  List<Ayahs>? get ayahs {
    final value = _ayahs;
    if (value == null) return null;
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Surahs? surahs;
  @override
  final Edition? edition;

  @override
  String toString() {
    return 'Data(number: $number, ayahs: $ayahs, surahs: $surahs, edition: $edition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs) &&
            (identical(other.surahs, surahs) || other.surahs == surahs) &&
            (identical(other.edition, edition) || other.edition == edition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number,
      const DeepCollectionEquality().hash(_ayahs), surahs, edition);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {final int? number,
      final List<Ayahs>? ayahs,
      final Surahs? surahs,
      final Edition? edition}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  int? get number;
  @override
  List<Ayahs>? get ayahs;
  @override
  Surahs? get surahs;
  @override
  Edition? get edition;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ayahs _$AyahsFromJson(Map<String, dynamic> json) {
  return _Ayahs.fromJson(json);
}

/// @nodoc
mixin _$Ayahs {
  int? get number => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  Surah? get surah => throw _privateConstructorUsedError;
  int? get numberInSurah => throw _privateConstructorUsedError;
  int? get juz => throw _privateConstructorUsedError;
  int? get manzil => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get ruku => throw _privateConstructorUsedError;
  int? get hizbQuarter => throw _privateConstructorUsedError;
  bool? get sajda => throw _privateConstructorUsedError;

  /// Serializes this Ayahs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ayahs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyahsCopyWith<Ayahs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahsCopyWith<$Res> {
  factory $AyahsCopyWith(Ayahs value, $Res Function(Ayahs) then) =
      _$AyahsCopyWithImpl<$Res, Ayahs>;
  @useResult
  $Res call(
      {int? number,
      String? text,
      Surah? surah,
      int? numberInSurah,
      int? juz,
      int? manzil,
      int? page,
      int? ruku,
      int? hizbQuarter,
      bool? sajda});

  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class _$AyahsCopyWithImpl<$Res, $Val extends Ayahs>
    implements $AyahsCopyWith<$Res> {
  _$AyahsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ayahs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? text = freezed,
    Object? surah = freezed,
    Object? numberInSurah = freezed,
    Object? juz = freezed,
    Object? manzil = freezed,
    Object? page = freezed,
    Object? ruku = freezed,
    Object? hizbQuarter = freezed,
    Object? sajda = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
      numberInSurah: freezed == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
              as int?,
      juz: freezed == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int?,
      manzil: freezed == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      ruku: freezed == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int?,
      hizbQuarter: freezed == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int?,
      sajda: freezed == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Ayahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get surah {
    if (_value.surah == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.surah!, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AyahsImplCopyWith<$Res> implements $AyahsCopyWith<$Res> {
  factory _$$AyahsImplCopyWith(
          _$AyahsImpl value, $Res Function(_$AyahsImpl) then) =
      __$$AyahsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number,
      String? text,
      Surah? surah,
      int? numberInSurah,
      int? juz,
      int? manzil,
      int? page,
      int? ruku,
      int? hizbQuarter,
      bool? sajda});

  @override
  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class __$$AyahsImplCopyWithImpl<$Res>
    extends _$AyahsCopyWithImpl<$Res, _$AyahsImpl>
    implements _$$AyahsImplCopyWith<$Res> {
  __$$AyahsImplCopyWithImpl(
      _$AyahsImpl _value, $Res Function(_$AyahsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ayahs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? text = freezed,
    Object? surah = freezed,
    Object? numberInSurah = freezed,
    Object? juz = freezed,
    Object? manzil = freezed,
    Object? page = freezed,
    Object? ruku = freezed,
    Object? hizbQuarter = freezed,
    Object? sajda = freezed,
  }) {
    return _then(_$AyahsImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
      numberInSurah: freezed == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
              as int?,
      juz: freezed == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int?,
      manzil: freezed == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      ruku: freezed == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int?,
      hizbQuarter: freezed == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int?,
      sajda: freezed == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahsImpl implements _Ayahs {
  _$AyahsImpl(
      {this.number,
      this.text,
      this.surah,
      this.numberInSurah,
      this.juz,
      this.manzil,
      this.page,
      this.ruku,
      this.hizbQuarter,
      this.sajda});

  factory _$AyahsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahsImplFromJson(json);

  @override
  final int? number;
  @override
  final String? text;
  @override
  final Surah? surah;
  @override
  final int? numberInSurah;
  @override
  final int? juz;
  @override
  final int? manzil;
  @override
  final int? page;
  @override
  final int? ruku;
  @override
  final int? hizbQuarter;
  @override
  final bool? sajda;

  @override
  String toString() {
    return 'Ayahs(number: $number, text: $text, surah: $surah, numberInSurah: $numberInSurah, juz: $juz, manzil: $manzil, page: $page, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahsImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.surah, surah) || other.surah == surah) &&
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
  int get hashCode => Object.hash(runtimeType, number, text, surah,
      numberInSurah, juz, manzil, page, ruku, hizbQuarter, sajda);

  /// Create a copy of Ayahs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahsImplCopyWith<_$AyahsImpl> get copyWith =>
      __$$AyahsImplCopyWithImpl<_$AyahsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahsImplToJson(
      this,
    );
  }
}

abstract class _Ayahs implements Ayahs {
  factory _Ayahs(
      {final int? number,
      final String? text,
      final Surah? surah,
      final int? numberInSurah,
      final int? juz,
      final int? manzil,
      final int? page,
      final int? ruku,
      final int? hizbQuarter,
      final bool? sajda}) = _$AyahsImpl;

  factory _Ayahs.fromJson(Map<String, dynamic> json) = _$AyahsImpl.fromJson;

  @override
  int? get number;
  @override
  String? get text;
  @override
  Surah? get surah;
  @override
  int? get numberInSurah;
  @override
  int? get juz;
  @override
  int? get manzil;
  @override
  int? get page;
  @override
  int? get ruku;
  @override
  int? get hizbQuarter;
  @override
  bool? get sajda;

  /// Create a copy of Ayahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyahsImplCopyWith<_$AyahsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  int? get number => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get englishName => throw _privateConstructorUsedError;
  String? get englishNameTranslation => throw _privateConstructorUsedError;
  String? get revelationType => throw _privateConstructorUsedError;
  int? get numberOfAyahs => throw _privateConstructorUsedError;

  /// Serializes this Surah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Surah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {int? number,
      String? name,
      String? englishName,
      String? englishNameTranslation,
      String? revelationType,
      int? numberOfAyahs});
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Surah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? englishName = freezed,
    Object? englishNameTranslation = freezed,
    Object? revelationType = freezed,
    Object? numberOfAyahs = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishNameTranslation: freezed == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String?,
      revelationType: freezed == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAyahs: freezed == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahImplCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$SurahImplCopyWith(
          _$SurahImpl value, $Res Function(_$SurahImpl) then) =
      __$$SurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number,
      String? name,
      String? englishName,
      String? englishNameTranslation,
      String? revelationType,
      int? numberOfAyahs});
}

/// @nodoc
class __$$SurahImplCopyWithImpl<$Res>
    extends _$SurahCopyWithImpl<$Res, _$SurahImpl>
    implements _$$SurahImplCopyWith<$Res> {
  __$$SurahImplCopyWithImpl(
      _$SurahImpl _value, $Res Function(_$SurahImpl) _then)
      : super(_value, _then);

  /// Create a copy of Surah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? englishName = freezed,
    Object? englishNameTranslation = freezed,
    Object? revelationType = freezed,
    Object? numberOfAyahs = freezed,
  }) {
    return _then(_$SurahImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishNameTranslation: freezed == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String?,
      revelationType: freezed == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAyahs: freezed == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahImpl implements _Surah {
  _$SurahImpl(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType,
      this.numberOfAyahs});

  factory _$SurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahImplFromJson(json);

  @override
  final int? number;
  @override
  final String? name;
  @override
  final String? englishName;
  @override
  final String? englishNameTranslation;
  @override
  final String? revelationType;
  @override
  final int? numberOfAyahs;

  @override
  String toString() {
    return 'Surah(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahImpl &&
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

  /// Create a copy of Surah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      __$$SurahImplCopyWithImpl<_$SurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahImplToJson(
      this,
    );
  }
}

abstract class _Surah implements Surah {
  factory _Surah(
      {final int? number,
      final String? name,
      final String? englishName,
      final String? englishNameTranslation,
      final String? revelationType,
      final int? numberOfAyahs}) = _$SurahImpl;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$SurahImpl.fromJson;

  @override
  int? get number;
  @override
  String? get name;
  @override
  String? get englishName;
  @override
  String? get englishNameTranslation;
  @override
  String? get revelationType;
  @override
  int? get numberOfAyahs;

  /// Create a copy of Surah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Surahs _$SurahsFromJson(Map<String, dynamic> json) {
  return _Surahs.fromJson(json);
}

/// @nodoc
mixin _$Surahs {
  Surah? get s41 => throw _privateConstructorUsedError;
  Surah? get s42 => throw _privateConstructorUsedError;
  Surah? get s43 => throw _privateConstructorUsedError;
  Surah? get s44 => throw _privateConstructorUsedError;
  Surah? get s45 => throw _privateConstructorUsedError;

  /// Serializes this Surahs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahsCopyWith<Surahs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahsCopyWith<$Res> {
  factory $SurahsCopyWith(Surahs value, $Res Function(Surahs) then) =
      _$SurahsCopyWithImpl<$Res, Surahs>;
  @useResult
  $Res call({Surah? s41, Surah? s42, Surah? s43, Surah? s44, Surah? s45});

  $SurahCopyWith<$Res>? get s41;
  $SurahCopyWith<$Res>? get s42;
  $SurahCopyWith<$Res>? get s43;
  $SurahCopyWith<$Res>? get s44;
  $SurahCopyWith<$Res>? get s45;
}

/// @nodoc
class _$SurahsCopyWithImpl<$Res, $Val extends Surahs>
    implements $SurahsCopyWith<$Res> {
  _$SurahsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s41 = freezed,
    Object? s42 = freezed,
    Object? s43 = freezed,
    Object? s44 = freezed,
    Object? s45 = freezed,
  }) {
    return _then(_value.copyWith(
      s41: freezed == s41
          ? _value.s41
          : s41 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s42: freezed == s42
          ? _value.s42
          : s42 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s43: freezed == s43
          ? _value.s43
          : s43 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s44: freezed == s44
          ? _value.s44
          : s44 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s45: freezed == s45
          ? _value.s45
          : s45 // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ) as $Val);
  }

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get s41 {
    if (_value.s41 == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.s41!, (value) {
      return _then(_value.copyWith(s41: value) as $Val);
    });
  }

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get s42 {
    if (_value.s42 == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.s42!, (value) {
      return _then(_value.copyWith(s42: value) as $Val);
    });
  }

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get s43 {
    if (_value.s43 == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.s43!, (value) {
      return _then(_value.copyWith(s43: value) as $Val);
    });
  }

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get s44 {
    if (_value.s44 == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.s44!, (value) {
      return _then(_value.copyWith(s44: value) as $Val);
    });
  }

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get s45 {
    if (_value.s45 == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.s45!, (value) {
      return _then(_value.copyWith(s45: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahsImplCopyWith<$Res> implements $SurahsCopyWith<$Res> {
  factory _$$SurahsImplCopyWith(
          _$SurahsImpl value, $Res Function(_$SurahsImpl) then) =
      __$$SurahsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Surah? s41, Surah? s42, Surah? s43, Surah? s44, Surah? s45});

  @override
  $SurahCopyWith<$Res>? get s41;
  @override
  $SurahCopyWith<$Res>? get s42;
  @override
  $SurahCopyWith<$Res>? get s43;
  @override
  $SurahCopyWith<$Res>? get s44;
  @override
  $SurahCopyWith<$Res>? get s45;
}

/// @nodoc
class __$$SurahsImplCopyWithImpl<$Res>
    extends _$SurahsCopyWithImpl<$Res, _$SurahsImpl>
    implements _$$SurahsImplCopyWith<$Res> {
  __$$SurahsImplCopyWithImpl(
      _$SurahsImpl _value, $Res Function(_$SurahsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s41 = freezed,
    Object? s42 = freezed,
    Object? s43 = freezed,
    Object? s44 = freezed,
    Object? s45 = freezed,
  }) {
    return _then(_$SurahsImpl(
      s41: freezed == s41
          ? _value.s41
          : s41 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s42: freezed == s42
          ? _value.s42
          : s42 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s43: freezed == s43
          ? _value.s43
          : s43 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s44: freezed == s44
          ? _value.s44
          : s44 // ignore: cast_nullable_to_non_nullable
              as Surah?,
      s45: freezed == s45
          ? _value.s45
          : s45 // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahsImpl implements _Surahs {
  _$SurahsImpl({this.s41, this.s42, this.s43, this.s44, this.s45});

  factory _$SurahsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahsImplFromJson(json);

  @override
  final Surah? s41;
  @override
  final Surah? s42;
  @override
  final Surah? s43;
  @override
  final Surah? s44;
  @override
  final Surah? s45;

  @override
  String toString() {
    return 'Surahs(s41: $s41, s42: $s42, s43: $s43, s44: $s44, s45: $s45)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahsImpl &&
            (identical(other.s41, s41) || other.s41 == s41) &&
            (identical(other.s42, s42) || other.s42 == s42) &&
            (identical(other.s43, s43) || other.s43 == s43) &&
            (identical(other.s44, s44) || other.s44 == s44) &&
            (identical(other.s45, s45) || other.s45 == s45));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, s41, s42, s43, s44, s45);

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahsImplCopyWith<_$SurahsImpl> get copyWith =>
      __$$SurahsImplCopyWithImpl<_$SurahsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahsImplToJson(
      this,
    );
  }
}

abstract class _Surahs implements Surahs {
  factory _Surahs(
      {final Surah? s41,
      final Surah? s42,
      final Surah? s43,
      final Surah? s44,
      final Surah? s45}) = _$SurahsImpl;

  factory _Surahs.fromJson(Map<String, dynamic> json) = _$SurahsImpl.fromJson;

  @override
  Surah? get s41;
  @override
  Surah? get s42;
  @override
  Surah? get s43;
  @override
  Surah? get s44;
  @override
  Surah? get s45;

  /// Create a copy of Surahs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahsImplCopyWith<_$SurahsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Edition _$EditionFromJson(Map<String, dynamic> json) {
  return _Edition.fromJson(json);
}

/// @nodoc
mixin _$Edition {
  String? get identifier => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get englishName => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get direction => throw _privateConstructorUsedError;

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
      {String? identifier,
      String? language,
      String? name,
      String? englishName,
      String? format,
      String? type,
      String? direction});
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
    Object? identifier = freezed,
    Object? language = freezed,
    Object? name = freezed,
    Object? englishName = freezed,
    Object? format = freezed,
    Object? type = freezed,
    Object? direction = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? identifier,
      String? language,
      String? name,
      String? englishName,
      String? format,
      String? type,
      String? direction});
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
    Object? identifier = freezed,
    Object? language = freezed,
    Object? name = freezed,
    Object? englishName = freezed,
    Object? format = freezed,
    Object? type = freezed,
    Object? direction = freezed,
  }) {
    return _then(_$EditionImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditionImpl implements _Edition {
  _$EditionImpl(
      {this.identifier,
      this.language,
      this.name,
      this.englishName,
      this.format,
      this.type,
      this.direction});

  factory _$EditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditionImplFromJson(json);

  @override
  final String? identifier;
  @override
  final String? language;
  @override
  final String? name;
  @override
  final String? englishName;
  @override
  final String? format;
  @override
  final String? type;
  @override
  final String? direction;

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
  factory _Edition(
      {final String? identifier,
      final String? language,
      final String? name,
      final String? englishName,
      final String? format,
      final String? type,
      final String? direction}) = _$EditionImpl;

  factory _Edition.fromJson(Map<String, dynamic> json) = _$EditionImpl.fromJson;

  @override
  String? get identifier;
  @override
  String? get language;
  @override
  String? get name;
  @override
  String? get englishName;
  @override
  String? get format;
  @override
  String? get type;
  @override
  String? get direction;

  /// Create a copy of Edition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditionImplCopyWith<_$EditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
