import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quran_quest/feature/on_boarding_screen/domain/usecases/cache_first_time.dart';
import 'package:quran_quest/feature/on_boarding_screen/domain/usecases/cache_if_user_exist_or_not.dart';

part 'quran_onboarding_event.dart';
part 'quran_onboadrding_state.dart';

class QuranOnBoardingBloc
    extends Bloc<QuranOnBoardingEvent, QuranOnBoardingState> {
  QuranOnBoardingBloc({
    required this.cacheFirstTimer,
    required this.checkIfUserIsFirstTimer,
  }) : super(QuranInitial()) {
    on<CacheFirstTimerEvent>(_onCacheFirstTimer);
    on<CheckIfUserIsFirstTimerEvent>(_onCheckIfUserIsFirstTimer);
  }

  final CacheFirstTime cacheFirstTimer;
  final CacheIfUserExistOrNot checkIfUserIsFirstTimer;

  // ! cache first time.
  Future<void> _onCacheFirstTimer(
    CacheFirstTimerEvent event,
    Emitter<QuranOnBoardingState> emit,
  ) async {
    emit(CachingFirstTimer());
    final result = await cacheFirstTimer();
    result.fold(
      (failure) => emit(QuranError(message: failure.message)),
      (_) {
        emit(UserCached());
      },
    );
  }

  // ! cache if user Exist OR Not.
  Future<void> _onCheckIfUserIsFirstTimer(
    CheckIfUserIsFirstTimerEvent event,
    Emitter<QuranOnBoardingState> emit,
  ) async {
    emit(CheckingIfUserIsFirstTimer());
    final result = await checkIfUserIsFirstTimer();
    result.fold(
      (error) => emit(QuranError(message: error.message)),
      (status) {
        emit(QuranStatus(isFirstTimer: status));
        log('Check this value : $status');
      },
    );
  }
}
