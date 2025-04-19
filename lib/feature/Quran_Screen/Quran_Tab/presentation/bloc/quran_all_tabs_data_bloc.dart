import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:quran_quest/core/Quran_Quest_Keys/quran_key.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/Favorite_Surah_Saved_Hive_Model/favorite_surah_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/surah_model/quran_surah_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/usecases/quran_surah_usecases.dart';

part 'quran_all_tabs_data_event.dart';
part 'quran_all_tabs_data_state.dart';

class QuranAllTabsDataBloc
    extends Bloc<QuranAllTabsDataEvent, QuranAllTabsDataState> {
  QuranAllTabsDataBloc({required this.getSurahUseCasesData})
      : super(QuranInitialAllTabs()) {
    on<FetchQuranSurahDataEvent>(_fetchSurahData);
    on<ToggleFavoriteSurahEvent>(_toggleFavoriteSurahEvent);
  }

  FutureOr<void> _fetchSurahData(
    FetchQuranSurahDataEvent event,
    Emitter<QuranAllTabsDataState> emit,
  ) async {
    try {
      emit(QuranLoadingSurah());
      final response = await getSurahUseCasesData.surahRepo.getAllListOfSurah();
      // log('Response Data From Surah :\n $response');
      response.fold(
        (Failure failure) => emit(QuranSurahErrorMessage(failure: failure)),
        (QuranSurahResponseModel surahModel) {
          // log('aw JSON Response: ${surahModel.toJson()}');
          emit(QuranLoadedSurah(surahModel: surahModel));
        },
      );
    } on Exception catch (error) {
      emit(
        QuranSurahErrorMessage(
          failure: Failure(code: 0, message: error.toString()),
        ),
      );
    }
  }

//! Previous some after days I will remove this code and add the new one
  FutureOr<void> _toggleFavoriteSurahEvent(
    ToggleFavoriteSurahEvent event,
    Emitter<QuranAllTabsDataState> emit,
  ) async {
    final favoriteKeys =
        Hive.box<FavoriteSurahModel>(QuranKeys.favoriteSurahModelBox);
    final number = event.favoriteSurahModel.numberOfSurah;

    if (favoriteKeys.containsKey(number)) {
      await favoriteKeys.delete(number);
      log('Removed from favorites: ${event.favoriteSurahModel.surahNameEnglish}');
    } else {
      final favModel = FavoriteSurahModel(
        numberOfSurah: event.favoriteSurahModel.numberOfSurah,
        surahNameEnglish: event.favoriteSurahModel.surahNameEnglish,
        surahNameArabic: event.favoriteSurahModel.surahNameArabic,
        verseCount: event.favoriteSurahModel.verseCount,
      );
      await favoriteKeys.put(number, favModel);
      log('Added to favorites: ${event.favoriteSurahModel.verseCount}');
    }

    // Emit updated favorite surah numbers
    emit(
      QuranFavoriteCheckLoadedState(
        favoriteSurahNumbers: favoriteKeys.keys.cast<int>().toSet(),
      ),
    );
  }

  final Box<FavoriteSurahModel> hiveBox =
      Hive.box(QuranKeys.favoriteSurahModelBox);
  // Surah UseCases.
  final GetQuranSurahListUseCase getSurahUseCasesData;
}
