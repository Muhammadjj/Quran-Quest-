part of 'parah_detail_bloc.dart';

abstract class ParahDetailEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ParahDetailFetchIndexEvent extends ParahDetailEvent {
  ParahDetailFetchIndexEvent({required this.parahIndex});
  final int parahIndex;
  @override
  List<Object?> get props => [parahIndex];
}
