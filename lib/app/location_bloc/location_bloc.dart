import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/helper/location_helper.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(AskForLocationPermissionState()) {
    //!  get current location
    on<GetLocationEvent>(_getLocation);
    //! re-request permission
    on<RetryPermissionEvent>(_reRequestPermission);
    //! enable location service
    on<EnableLocationServiceEvent>(_enableLocationService);
  }

  FutureOr<void> _getLocation(
    GetLocationEvent event,
    Emitter<LocationState> emit,
  ) async {
    final locationService = await locationHelper.isLocationServiceEnabled();

    if (locationService) {
      final locationPermission = await locationHelper.checkPermission();
      if (locationPermission) {
        final position = locationHelper.getLatLong();
        await locationHelper.getPositionDetails(
          currentPosition: await position,
        );
        emit(FetchCurrentLocationState());
      } else {
        emit(LocationPermissionDeniedState());
      }
    } else {
      emit(LocationServiceDisabledState());
    }
  }

  Future<void> _reRequestPermission(
    RetryPermissionEvent event,
    Emitter<LocationState> emit,
  ) async {
    await locationHelper.isAppSettingsOpens();
    final isAppSettingsOpened = await locationHelper.isLocationSettingsOpens();
    if (isAppSettingsOpened) {
      await _getLocation(GetLocationEvent(), emit);
    } else {
      emit(LocationPermissionDeniedState());
    }
  }

  Future<void> _enableLocationService(
    EnableLocationServiceEvent event,
    Emitter<LocationState> emit,
  ) async {
    await locationHelper.openLocationSettings();
    final isSettingsOpened = await locationHelper.isLocationSettingsOpens();
    if (isSettingsOpened) {
      await _getLocation(GetLocationEvent(), emit);
    } else {
      emit(LocationServiceDisabledState());
    }
  }

  // ! call of (Location Helper)
  static LocationHelper locationHelper = LocationHelper.instance;
}
