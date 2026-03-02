import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive_ce.dart';
// import 'package:hive_flutter/adapters.dart';
import 'package:quran_quest/core/Quran_Quest_Keys/quran_key.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/Favorite_Surah_Saved_Hive_Model/favorite_surah_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/widgets/widget.dart';

class FavoriteSurahSavedScreen extends StatefulWidget {
  const FavoriteSurahSavedScreen({super.key});

  @override
  State<FavoriteSurahSavedScreen> createState() =>
      _FavoriteSurahSavedScreenState();
}

class _FavoriteSurahSavedScreenState extends State<FavoriteSurahSavedScreen> {
  //! Hive Box for storing favorite Surahs
  static final Box<FavoriteSurahModel> _favoriteBoxKey =
      Hive.box<FavoriteSurahModel>(QuranKeys.favoriteSurahModelBox);

  //! List to hold favorite Surahs
  late List<FavoriteSurahModel> _favoriteSurahs;

  @override
  void initState() {
    super.initState();
    _loadFavoriteSurahs();
  }

  ///! Loads favorite Surahs from the Hive box
  void _loadFavoriteSurahs() {
    _favoriteSurahs = _favoriteBoxKey.values.toList();
    if (kDebugMode) log('Loaded Favorite Surahs: $_favoriteSurahs');
  }

  ///! Removes a Surah from favorites and updates the UI
  void _removeFavoriteSurah(int surahNumber) {
    _favoriteBoxKey.delete(surahNumber);
    setState(_loadFavoriteSurahs);
    if (kDebugMode) log('Removed Favorite Surah: $surahNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final height = constraints.maxHeight;
          final width = constraints.maxWidth;

          //! Check if there are no favorite Surahs
          if (_favoriteSurahs.isEmpty) {
            return _buildEmptyState(context);
          }

          //! Display the list of favorite Surahs
          return _buildFavoriteSurahList(height, width);
        },
      ),
    );
  }

  ///! Builds the UI for the empty state
  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: AutoSizeText(
        'No Favorite Surahs',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.kWhite
                  : AppColors.kBlack,
              fontFamily: FontFamilyName.amiriQuran,
              fontSize: 20.sp,
            ),
      ),
    );
  }

  ///! Builds the list of favorite Surahs
  Widget _buildFavoriteSurahList(double height, double width) {
    return ListView.builder(
      itemCount: _favoriteSurahs.length,
      itemBuilder: (context, index) {
        final surah = _favoriteSurahs[index];
        return FavoriteSurahSavedCardWidget(
          numberOfSurah: surah.numberOfSurah,
          surahNameArabic: surah.surahNameArabic,
          surahNameEnglish: surah.surahNameEnglish,
          verseCount: surah.verseCount,
          height: height,
          width: width,
          onTap: () => _navigateToSurahDetail(surah),
          favoriteButton: () => _removeFavoriteSurah(surah.numberOfSurah),
          isFavorite: FavoriteSurahHelper.isFavorite(surah.numberOfSurah),
        );
      },
    );
  }

  ///! Navigates to the Surah detail screen
  void _navigateToSurahDetail(FavoriteSurahModel surah) {
    NavigationHelper.pushNamed(
      RoutesName.quranSurahDetail,
      arguments: {
        'surahIndex': surah.numberOfSurah,
        'surahNameArabic': surah.surahNameArabic,
      },
    );
  }
}
