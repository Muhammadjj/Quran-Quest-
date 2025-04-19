import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_flash_cards_model.freezed.dart';
part 'quran_flash_cards_model.g.dart';

@freezed
class QuranFlashCardModel with _$QuranFlashCardModel {
  @JsonSerializable(explicitToJson: true)
  const factory QuranFlashCardModel({
    required int code,
    required String status,
    required List<SurahData> data,
  }) = _QuranFlashCardModel;

  factory QuranFlashCardModel.fromJson(Map<String, dynamic> json) =>
      _$QuranFlashCardModelFromJson(json);
}

@freezed
class SurahData with _$SurahData {
  @JsonSerializable(explicitToJson: true)
  const factory SurahData({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    required int numberOfAyahs,
    required List<Ayah> ayahs,
    required Edition edition,
  }) = _SurahData;

  factory SurahData.fromJson(Map<String, dynamic> json) =>
      _$SurahDataFromJson(json);
}

@freezed
class Ayah with _$Ayah {
  @JsonSerializable(explicitToJson: true)
  const factory Ayah({
    required int number,
    required String text,
    required int numberInSurah,
    required int juz,
    required int manzil,
    required int page,
    required int ruku,
    required int hizbQuarter,
    required bool sajda,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}

@freezed
class Edition with _$Edition {
  @JsonSerializable(explicitToJson: true)
  const factory Edition({
    required String identifier,
    required String language,
    required String name,
    required String englishName,
    required String format,
    required String type,
    required String direction,
  }) = _Edition;

  factory Edition.fromJson(Map<String, dynamic> json) =>
      _$EditionFromJson(json);
}
