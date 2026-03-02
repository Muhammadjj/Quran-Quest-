// ignore_for_file: flutter_style_todos

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';

// import 'package:quran_quest/core/network/network.dart';

final logger = Logger();

class LocationServiceException implements Exception {
  LocationServiceException({required this.message});
  final String message;

  @override
  String toString() => 'LocationServiceException: $message';
}

class LocationHelper {
  ///! Singleton instance of [LocationHelper].
  factory LocationHelper() {
    return instance;
  }

  LocationHelper._();

  static final LocationHelper instance = LocationHelper._();

  Future<bool> checkPermission() async {
    try {
      var permission = await Geolocator.checkPermission();

      // Todo=> (IF Permission is Denied )
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          logger.d(
            'Location permissions are denied.',
          );
          throw LocationServiceException(
            message: 'Location permissions are denied.',
          );
        }
      }

      // Todo=> (IF user Permission permanentlyDenied)
      if (permission == LocationPermission.deniedForever) {
        logger.d(
          'Location permissions are deniedForever.',
        );
        throw LocationServiceException(
          message: 'Location permissions are permanently denied.',
        );
      }
      return true;
    } on Exception catch (error) {
      if (kDebugMode) log('Error Checking Location permission : $error');
      logger.e('Error Checking Location permission : $error');
      return false;
    }
  }

  //! Define User Current Position
  Future<Position> getLatLong() async {
    return Geolocator.getCurrentPosition();
  }

  Future<void> updateLocation() async {
    try {
      final currentPosition = await getLatLong();
      await getPositionDetails(currentPosition: currentPosition);
    } on Exception catch (e) {
      logger.e('Error getting location: $e');
      if (kDebugMode) log('Error getting location: $e');
      throw LocationServiceException(
        message: 'Error getting location: $e',
      );
    }
  }

  ///! This function retrieves address details (like country and city)
  ///! from a geographic position (latitude and longitude)
  Future<void> getPositionDetails({required Position? currentPosition}) async {
    try {
      if (currentPosition != null) {
        final placeMark = await placemarkFromCoordinates(
          currentPosition.latitude,
          currentPosition.longitude,
        );

        if (placeMark.isNotEmpty) {
          final placeMarkData = placeMark.first;
          LocationModel().updateLocation(
            city: placeMarkData.locality ?? 'Lahore',
            country: placeMarkData.country ?? 'Pakistan',
            position: currentPosition,
          );
          logger.d(placeMarkData.locality.toString());
        }
      }
    } on Exception catch (error) {
      logger.e('Error updating location details: $error');
      if (kDebugMode) log('Error updating location details: $error');
    }
  }

  Future<bool> isLocationServiceEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }

  ///! Opens the application settings.
  Future<bool> isAppSettingsOpens() async {
    return Geolocator.openAppSettings();
  }

  Future<bool> isLocationSettingsOpens() async {
    return Geolocator.openLocationSettings();
  }

  Future<void> openAppSettings() async {
    await Geolocator.openAppSettings();
  }

  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }
}

// Todo=> Location Model.
class LocationModel {
  //! Private constructor (Objects)
  factory LocationModel() {
    return instance;
  }

  //! private Constructor
  LocationModel._();

  //! Singleton class (One Instance of )
  static LocationModel instance = LocationModel._();

  // ! PRivate Member.
  String _country = '';
  String _city = '';
  Position? _position;

//! Using this function (Update Location).
  void updateLocation({
    required String country,
    required String city,
    required Position position,
  }) {
    _country = country;
    _city = city;
    _position = position;
  }

//! Access other class using (Getter Method)
  String? get city => _city;
  String? get country => _country;
  Position? get position => _position;
}
