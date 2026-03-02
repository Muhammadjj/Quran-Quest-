part of 'location_bloc.dart';

class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object?> get props => [];
}

//! : Triggers the fetching of the device's current location.
class GetLocationEvent extends LocationEvent {}

// ! Re-requests location permissions after the user has previously denied them.
class RetryPermissionEvent extends LocationEvent {}

// ! Prompts the user to enable location services when they are disabled.
class EnableLocationServiceEvent extends LocationEvent {}
