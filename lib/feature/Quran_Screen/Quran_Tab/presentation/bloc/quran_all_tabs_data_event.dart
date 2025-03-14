part of 'quran_all_tabs_data_bloc.dart';

abstract class QuranAllTabsDataEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchQuranSurahDataEvent extends QuranAllTabsDataEvent {}
