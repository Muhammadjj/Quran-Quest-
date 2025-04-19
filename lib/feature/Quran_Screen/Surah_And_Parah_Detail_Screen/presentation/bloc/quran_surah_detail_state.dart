part of 'quran_surah_detail_bloc.dart';

abstract class QuranSurahDetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class QuranSurahDetailInitialState extends QuranSurahDetailState {}

class QuranSurahDetailLoadingState extends QuranSurahDetailState {}

class QuranSurahDetailLoadedState extends QuranSurahDetailState {
  QuranSurahDetailLoadedState({required this.detailModel});
  final SurahDetailModel detailModel;
  @override
  List<Object?> get props => [detailModel];
}

class QuranParahDetailLoadedState extends QuranSurahDetailState {
  QuranParahDetailLoadedState({required this.quranParahResponseModel});
  final QuranParahResponseModel quranParahResponseModel;

  @override
  List<Object?> get props => [quranParahResponseModel];
}

class QuranSurahDetailErrorMessage extends QuranSurahDetailState {
  QuranSurahDetailErrorMessage({required this.failure});
  final Failure failure;
  @override
  List<Object?> get props => [failure];
}
