// ignore_for_file: flutter_style_todos

import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_detail_model.freezed.dart';
part 'surah_detail_model.g.dart';

@freezed
class SurahDetailModel with _$SurahDetailModel {
  const factory SurahDetailModel({
    required int code,
    required String status,
    required SurahData data,
  }) = _SurahDetailModel;

  factory SurahDetailModel.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailModelFromJson(json);
}

@freezed
class SurahData with _$SurahData {
  const factory SurahData({
    required int number,
    required String name,
    @JsonKey(name: 'englishName') required String englishName,
    @JsonKey(name: 'englishNameTranslation')
    required String englishNameTranslation,
    @JsonKey(name: 'revelationType') required String revelationType,
    @JsonKey(name: 'numberOfAyahs') required int numberOfAyahs,
    required List<Ayah> ayahs,
    required Edition edition,
  }) = _SurahData;

  factory SurahData.fromJson(Map<String, dynamic> json) =>
      _$SurahDataFromJson(json);
}

@freezed
class Ayah with _$Ayah {
  const factory Ayah({
    required int number,
    required String audio,
    @JsonKey(name: 'audioSecondary') required List<String> audioSecondaryUrls,
    required String text,
    @JsonKey(name: 'numberInSurah') required int ayahNumber,
    required int juz,
    required int manzil,
    required int page,
    required int ruku,
    @JsonKey(name: 'hizbQuarter') required int hizbQuarter,
    required bool sajda,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}

@freezed
class Edition with _$Edition {
  const factory Edition({
    required String identifier,
    required String language,
    required String name,
    @JsonKey(name: 'englishName') required String englishName,
    required String format,
    required String type,
    required dynamic direction, //Todo=>  Nullable handle karein
  }) = _Edition;

  factory Edition.fromJson(Map<String, dynamic> json) =>
      _$EditionFromJson(json);
}
