import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/Surah_Model/surah_detail_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/domain/usecases/quran_surah_detail_usecases.dart';

part 'quran_surah_detail_event.dart';
part 'quran_surah_detail_state.dart';

class QuranSurahDetailBloc
    extends Bloc<QuranSurahDetailEvent, QuranSurahDetailState> {
  QuranSurahDetailBloc({
    required this.quranSurahDetailUsecases,
    required this.parahDetailUsecase,
  }) : super(QuranSurahDetailInitialState()) {
    on<QuranSurahDetailFetchByIndexEvent>(
      _quranDetailFetchEvent,
    );

    on<QuranParahDetailFetchIndexEvent>(
      _quranParahDetailFetchIndex,
    );
  }
  FutureOr<void> _quranDetailFetchEvent(
    QuranSurahDetailFetchByIndexEvent event,
    Emitter<QuranSurahDetailState> emit,
  ) async {
    try {
      emit(QuranSurahDetailLoadingState());
      log('Fetching data for Surah Index: ${event.surahIndex}');
      final response = await quranSurahDetailUsecases.quranSurahDetailRepo
          .getSurahRepo(surahIndex: event.surahIndex);
      log('Response of Surah Data : $response');
      response.fold(
        (Failure failure) {
          log('Failure: $failure');
          emit(QuranSurahDetailErrorMessage(failure: failure));
        },
        (SurahDetailModel response) {
          log('Response of Model Data : $response');
          emit(QuranSurahDetailLoadedState(detailModel: response));
        },
      );
    } on Exception catch (error) {
      log('Exception: $error');
      emit(
        QuranSurahDetailErrorMessage(
          failure: Failure(message: error.toString(), code: 0),
        ),
      );
    }
  }

  FutureOr<void> _quranParahDetailFetchIndex(
    QuranParahDetailFetchIndexEvent event,
    Emitter<QuranSurahDetailState> emit,
  ) async {
    try {
      emit(QuranSurahDetailLoadingState());
      log('Fetching data for Surah Index: ${event.parahIndex}');
      final response = await parahDetailUsecase.quranSurahDetailRepo
          .getParahDetailsRepo(parahIndex: event.parahIndex);
      log('Response of Surah Data : $response');
      response.fold(
        (Failure failure) {
          log('Failure: $failure');
          emit(QuranSurahDetailErrorMessage(failure: failure));
        },
        (QuranParahResponseModel response) {
          log('Response of Model Data : ${response.data}');
          emit(QuranParahDetailLoadedState(quranParahResponseModel: response));
        },
      );
    } on Exception catch (error) {
      log('Exception: $error');
      emit(
        QuranSurahDetailErrorMessage(
          failure: Failure(message: error.toString(), code: 0),
        ),
      );
    }
  }

  final QuranSurahDetailUsecases quranSurahDetailUsecases;
  final ParahDetailUsecase parahDetailUsecase;
}
