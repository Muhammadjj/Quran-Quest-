part of 'random_ayah_bloc.dart';

// ! Random Ayah State
sealed class RandomAyahState extends Equatable {
  const RandomAyahState();

  @override
  List<Object> get props => [];
}

// ! Initial State of Random Ayah
final class RandomAyahInitial extends RandomAyahState {}

// ! Loading State of Random Ayah
final class RandomAyahLoading extends RandomAyahState {}

// ! Loaded State of Random Ayah
final class RandomAyahLoadedState extends RandomAyahState {
  const RandomAyahLoadedState({required this.randomAyah});
  final RandomAyah randomAyah;

  @override
  List<Object> get props => [randomAyah];
}

// ! Error State of Random Ayah
final class RandomAyahError extends RandomAyahState {
  const RandomAyahError({required this.error});
  final Failure error;

  @override
  List<Object> get props => [error];
}

// ! Flash Card State
final class QuranFlashCardState extends RandomAyahState {
  const QuranFlashCardState({required this.quranFlashCardModel});
  final QuranFlashCardModel quranFlashCardModel;

  @override
  List<Object> get props => [quranFlashCardModel];
}
