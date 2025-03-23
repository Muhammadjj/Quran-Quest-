import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/domain/usecases/parah_detail_usecase.dart';

part 'parah_detail_state.dart';
part 'parah_detail_event.dart';

class ParahDetailBloc extends Bloc<ParahDetailEvent, ParahDetailState> {
  ParahDetailBloc({required this.parahDetailUsecase})
      : super(ParahDetailInitialState()) {
    on<ParahDetailFetchIndexEvent>(_parahDetailFetchData);
  }

  FutureOr<void> _parahDetailFetchData(
    ParahDetailFetchIndexEvent event,
    Emitter<ParahDetailState> emit,
  ) async {
    emit(ParahDetailLoadingState());
    final response = await parahDetailUsecase.parahDetailRepo
        .getParahDetailsRepo(parahIndex: event.parahIndex);
    log('Response of Data : $response');
    response.fold(
      (failure) {
        emit(ParahDetailErrorMessageState(failure: failure));
        log('Response of Data : $failure');
      },
      (response) {
        log('Response of Data : ${response.data}');
        emit(ParahDetailLoadedState(parahResponseModel: response));
      },
    );
  }

  ParahDetailUsecase parahDetailUsecase;
}
