part of 'quran_all_tabs_data_bloc.dart';

abstract class QuranAllTabsDataState extends Equatable {
  @override
  List<Object?> get props => [];
}

class QuranInitialAllTabs extends QuranAllTabsDataState {}

class QuranLoadingSurah extends QuranAllTabsDataState {}

class QuranLoadedSurah extends QuranAllTabsDataState {
  QuranLoadedSurah({required this.surahModel});
  final QuranSurahResponseModel surahModel;
  @override
  List<Object?> get props => [surahModel];
}

class QuranSurahErrorMessage extends QuranAllTabsDataState {
  QuranSurahErrorMessage({required this.failure});
  final Failure failure;
  @override
  List<Object?> get props => [failure];
}

// ! Favorite Surah State
class QuranFavoriteCheckLoadedState extends QuranAllTabsDataState {
  QuranFavoriteCheckLoadedState({required this.favoriteSurahNumbers});
  final Set<int> favoriteSurahNumbers;
  @override
  List<Object?> get props => [favoriteSurahNumbers];
}
