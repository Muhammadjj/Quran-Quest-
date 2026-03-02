// import 'package:hive/hive.dart';

import 'package:hive_ce/hive_ce.dart';

part 'favorite_surah_model.g.dart';

@HiveType(typeId: 0)
class FavoriteSurahModel extends HiveObject {
  FavoriteSurahModel({
    required this.numberOfSurah,
    required this.surahNameArabic,
    required this.surahNameEnglish,
    required this.verseCount,
  });

  //! Create object from JSON
  factory FavoriteSurahModel.fromJson(Map<String, dynamic> json) {
    return FavoriteSurahModel(
      numberOfSurah: json['numberOfSurah'] as int,
      surahNameArabic: json['surahNameArabic'] as String,
      surahNameEnglish: json['surahNameEnglish'] as String,
      verseCount: json['verseCount'] as int,
    );
  }

  //! Convert object to JSON
  Map<String, dynamic> toJson() {
    return {
      'numberOfSurah': numberOfSurah,
      'surahNameArabic': surahNameArabic,
      'surahNameEnglish': surahNameEnglish,
      'verseCount': verseCount,
    };
  }

  @HiveField(0)
  final int numberOfSurah;

  @HiveField(1)
  final String surahNameArabic;

  @HiveField(2)
  final String surahNameEnglish;

  @HiveField(3)
  final int verseCount;

  @override
  String toString() {
    return 'FavoriteSurahModel{numberOfSurah: $numberOfSurah, surahNameArabic: $surahNameArabic, surahNameEnglish: $surahNameEnglish, verseCount: $verseCount}';
  }
}
