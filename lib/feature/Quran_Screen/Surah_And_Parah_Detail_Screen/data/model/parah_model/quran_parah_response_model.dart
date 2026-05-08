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

  factory Ayahs.fromJson(Map<String, dynamic> json) {
    // Handle sajda field which might come as Map instead of bool
    final sajdaValue = json['sajda'];
    bool? sajdaBool;

    if (sajdaValue is bool) {
      sajdaBool = sajdaValue;
    } else if (sajdaValue is Map) {
      // If it's a Map, check if it has a 'result' or 'value' key
      sajdaBool = sajdaValue['result'] as bool? ?? sajdaValue['value'] as bool?;
    } else {
      sajdaBool = null;
    }

    // Create a modified json map with the fixed sajda value
    final modifiedJson = {...json, 'sajda': sajdaBool};
    return _$AyahsFromJson(modifiedJson);
  }
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
