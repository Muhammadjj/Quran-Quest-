import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/surah_model/quran_surah_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/usecases/quran_surah_usecases.dart';

part 'quran_all_tabs_data_event.dart';
part 'quran_all_tabs_data_state.dart';

class QuranAllTabsDataBloc
    extends Bloc<QuranAllTabsDataEvent, QuranAllTabsDataState> {
  QuranAllTabsDataBloc({required this.getSurahUseCasesData})
      : super(QuranInitialAllTabs()) {
    on<FetchQuranSurahDataEvent>(_fetchSurahData);
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

  // Surah UseCases.
  final GetQuranSurahListUseCase getSurahUseCasesData;
}
