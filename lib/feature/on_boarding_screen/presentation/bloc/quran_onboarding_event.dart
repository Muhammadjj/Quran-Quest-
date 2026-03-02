part of 'quran_onboarding_bloc.dart';

//* Base class for all Weather events
abstract class QuranOnBoardingEvent extends Equatable {
  const QuranOnBoardingEvent();

  @override
  List<Object> get props => [];
}

//* Event to cache first timer
class CacheFirstTimerEvent extends QuranOnBoardingEvent {}

//* Event to check if user is first timer
class CheckIfUserIsFirstTimerEvent extends QuranOnBoardingEvent {}
