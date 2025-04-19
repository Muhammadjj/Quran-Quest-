import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/Quran_Flash_Card/quran_flash_cards_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/usecases/get_random_ayah.dart';

part 'random_ayah_event.dart';
part 'random_ayah_state.dart';

class RandomAyahBloc extends Bloc<RandomAyahEvent, RandomAyahState> {
  RandomAyahBloc({required this.getRandomAyah}) : super(RandomAyahInitial()) {
    on<FetchRandomAyahEvent>(_fetchAyahEvent);
    on<QuranFlashCardEvent>(_fetchFlashCardEvent);
  }

  FutureOr<void> _fetchAyahEvent(
    FetchRandomAyahEvent event,
    Emitter<RandomAyahState> emit,
  ) async {
    emit(RandomAyahLoading());
    final result = await getRandomAyah.repository.fetchRandomAyah();
    result.fold(
      (failure) {
        if (kDebugMode) log('Error: ${failure.message}');
        emit(RandomAyahError(error: failure));
      },
      (RandomAyah randomAyah) {
        if (kDebugMode) log('Data: ${randomAyah.toJson()}');
        emit(RandomAyahLoadedState(randomAyah: randomAyah));
      },
    );
  }

  FutureOr<void> _fetchFlashCardEvent(
    QuranFlashCardEvent event,
    Emitter<RandomAyahState> emit,
  ) async {
    emit(RandomAyahLoading());
    final result = await getRandomAyah.repository.fetchFlashCardLanguage(
      selectLanguage: event.selectLanguage,
    );
    result.fold(
      (failure) {
        if (kDebugMode) log('Error: ${failure.message}');
        emit(RandomAyahError(error: failure));
      },
      (QuranFlashCardModel quranFlashCardModel) {
        // if (kDebugMode) log('Data: ${quranFlashCardModel.toJson()}');
        log('Arabic: ${quranFlashCardModel.data[0].ayahs[0].text}');
        log('Urdu: ${quranFlashCardModel.data[1].ayahs[0].text}');
        emit(QuranFlashCardState(quranFlashCardModel: quranFlashCardModel));
      },
    );
  }

  final GetRandomAyah getRandomAyah;
}
