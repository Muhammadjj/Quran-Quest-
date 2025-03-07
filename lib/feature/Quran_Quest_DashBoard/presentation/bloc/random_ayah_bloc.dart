import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/usecases/get_random_ayah.dart';

part 'random_ayah_event.dart';
part 'random_ayah_state.dart';

class RandomAyahBloc extends Bloc<RandomAyahEvent, RandomAyahState> {
  RandomAyahBloc({required this.getRandomAyah}) : super(RandomAyahInitial()) {
    on<FetchRandomAyahEvent>(_fetchAyahEvent);
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

  final GetRandomAyah getRandomAyah;
}
