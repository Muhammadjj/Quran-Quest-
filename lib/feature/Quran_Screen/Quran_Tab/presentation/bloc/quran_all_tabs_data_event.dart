part of 'quran_all_tabs_data_bloc.dart';

abstract class QuranAllTabsDataEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchQuranSurahDataEvent extends QuranAllTabsDataEvent {}

// ! Favorite Surah Event
class ToggleFavoriteSurahEvent extends QuranAllTabsDataEvent {
  ToggleFavoriteSurahEvent({required this.favoriteSurahModel});
  final FavoriteSurahModel favoriteSurahModel;
  @override
  List<Object?> get props => [favoriteSurahModel];
}
