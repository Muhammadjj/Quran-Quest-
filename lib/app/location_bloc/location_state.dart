part of 'location_bloc.dart';

class LocationState extends Equatable {
  @override
  List<Object?> get props => [];
}

// ! Indicates that the app needs to ask the user for location permissions.
//! (Initial State )
class AskForLocationPermissionState extends LocationState {}

//! Indicates that the app successfully fetched the current location.
class FetchCurrentLocationState extends LocationState {}

// !  Indicates that the user denied location permissions.
class LocationPermissionDeniedState extends LocationState {}

// ! Indicates that the device's location services are disabled.
class LocationServiceDisabledState extends LocationState {}
