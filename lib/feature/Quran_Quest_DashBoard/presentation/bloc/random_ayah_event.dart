part of 'random_ayah_bloc.dart';

// ! Random Ayah Event
sealed class RandomAyahEvent extends Equatable {
  const RandomAyahEvent();

  @override
  List<Object> get props => [];
}

// ! Fetch Random Ayah Event
class FetchRandomAyahEvent extends RandomAyahEvent {
  @override
  List<Object> get props => [];
}

class QuranFlashCardEvent extends RandomAyahEvent {
  const QuranFlashCardEvent({required this.selectLanguage});
  final String selectLanguage;

  @override
  List<Object> get props => [selectLanguage];
}
