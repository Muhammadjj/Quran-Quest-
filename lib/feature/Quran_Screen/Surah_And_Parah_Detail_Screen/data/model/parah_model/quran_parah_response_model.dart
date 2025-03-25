import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_parah_response_model.freezed.dart';
part 'quran_parah_response_model.g.dart';

@freezed
class QuranParahResponseModel with _$QuranParahResponseModel {
  factory QuranParahResponseModel({
    int? code,
    String? status,
    Data? data,
  }) = _QuranParahResponseModel;

  factory QuranParahResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuranParahResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    int? number,
    List<Ayahs>? ayahs,
    Surahs? surahs,
    Edition? edition,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Ayahs with _$Ayahs {
  factory Ayahs({
    int? number,
    String? text,
    Surah? surah,
    int? numberInSurah,
    int? juz,
    int? manzil,
    int? page,
    int? ruku,
    int? hizbQuarter,
    bool? sajda,
  }) = _Ayahs;

  factory Ayahs.fromJson(Map<String, dynamic> json) => _$AyahsFromJson(json);
}

@freezed
class Surah with _$Surah {
  factory Surah({
    int? number,
    String? name,
    String? englishName,
    String? englishNameTranslation,
    String? revelationType,
    int? numberOfAyahs,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

@freezed
class Surahs with _$Surahs {
  factory Surahs({
    Surah? s41,
    Surah? s42,
    Surah? s43,
    Surah? s44,
    Surah? s45,
  }) = _Surahs;

  factory Surahs.fromJson(Map<String, dynamic> json) => _$SurahsFromJson(json);
}

@freezed
class Edition with _$Edition {
  factory Edition({
    String? identifier,
    String? language,
    String? name,
    String? englishName,
    String? format,
    String? type,
    String? direction,
  }) = _Edition;

  factory Edition.fromJson(Map<String, dynamic> json) =>
      _$EditionFromJson(json);
}
