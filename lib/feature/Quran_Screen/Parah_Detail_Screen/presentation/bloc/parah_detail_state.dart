part of 'parah_detail_bloc.dart';

abstract class ParahDetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

// ! Parah detail Initials state
class ParahDetailInitialState extends ParahDetailState {}

// ! Parah detail Loading State
class ParahDetailLoadingState extends ParahDetailState {}

// ! Parah detail Loaded State
class ParahDetailLoadedState extends ParahDetailState {
  ParahDetailLoadedState({required this.parahResponseModel});
  final QuranParahResponseModel parahResponseModel;
  @override
  List<Object?> get props => [parahResponseModel];
}

// ! Parah details Error Message.
class ParahDetailErrorMessageState extends ParahDetailState {
  ParahDetailErrorMessageState({required this.failure});
  final Failure failure;

  @override
  List<Object?> get props => [failure];
}
