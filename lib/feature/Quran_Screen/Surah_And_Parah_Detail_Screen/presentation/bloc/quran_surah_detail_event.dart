part of 'quran_surah_detail_bloc.dart';

abstract class QuranSurahDetailEvent extends Equatable {}

class QuranSurahDetailFetchByIndexEvent extends QuranSurahDetailEvent {
  QuranSurahDetailFetchByIndexEvent({required this.surahIndex});
  final int surahIndex;
  @override
  List<Object?> get props => [surahIndex];
}

class QuranParahDetailFetchIndexEvent extends QuranSurahDetailEvent {
  QuranParahDetailFetchIndexEvent({required this.parahIndex});
  final int parahIndex;
  @override
  List<Object?> get props => [parahIndex];
}
