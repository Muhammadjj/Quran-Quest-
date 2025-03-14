import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_surah_model.freezed.dart';
part 'quran_surah_model.g.dart';

// quran_surah_response_model.dart
@freezed
class QuranSurahResponseModel with _$QuranSurahResponseModel {
  factory QuranSurahResponseModel({
    required int code,
    required String status,
    required List<QuranSurahModel> data, // Ye wohi existing Surah model hai
  }) = _QuranSurahResponseModel;

  factory QuranSurahResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuranSurahResponseModelFromJson(json);
}

// quran_surah_model.dart (existing model ko update karein)
@freezed
class QuranSurahModel with _$QuranSurahModel {
  factory QuranSurahModel({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    required int numberOfAyahs,
  }) = _QuranSurahModel;

  factory QuranSurahModel.fromJson(Map<String, dynamic> json) =>
      _$QuranSurahModelFromJson(json);
}
