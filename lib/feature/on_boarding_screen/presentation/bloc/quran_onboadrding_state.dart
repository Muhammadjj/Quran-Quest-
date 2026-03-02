part of 'quran_onboarding_bloc.dart';

//! Base class for all Weather states
sealed class QuranOnBoardingState extends Equatable {
  const QuranOnBoardingState();

  @override
  List<Object> get props => [];
}

//! Initial state
final class QuranInitial extends QuranOnBoardingState {}

//! State when caching first timer
class CachingFirstTimer extends QuranOnBoardingState {}

//! State when checking if user is first timer
class CheckingIfUserIsFirstTimer extends QuranOnBoardingState {}

//! State when user is cached
class UserCached extends QuranOnBoardingState {}

//! State representing weather status
class QuranStatus extends QuranOnBoardingState {
  const QuranStatus({required this.isFirstTimer});
  final bool isFirstTimer;
  @override
  List<Object> get props => [isFirstTimer];
}

//! State when there is an error
class QuranError extends QuranOnBoardingState {
  const QuranError({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}
