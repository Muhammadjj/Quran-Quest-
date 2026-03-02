// ignore_for_file: only_throw_errors

import 'dart:developer';

import 'package:quran_quest/core/network/network.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnBoardingLocalDataSource {
  const OnBoardingLocalDataSource();
  Future<void> cacheFirstTimer();
  Future<bool> checkIfUserIsFirstTimer();
}

const kFirstTimerKey = 'first_timer';

class OnBoardingLocalDataSrcImpl implements OnBoardingLocalDataSource {
  const OnBoardingLocalDataSrcImpl({required this.prefs});

  final SharedPreferences prefs;

  @override
  Future<void> cacheFirstTimer() async {
    try {
      await prefs.setBool(kFirstTimerKey, false);
      log('Store Value : $kFirstTimerKey');
    } on Exception catch (error) {
      throw ErrorHandler.handle(error).failure!;
    }
  }

  @override
  Future<bool> checkIfUserIsFirstTimer() async {
    try {
      log('2nd Time : $kFirstTimerKey');
      return prefs.getBool(kFirstTimerKey) ?? true;
    } on Exception catch (error) {
      throw ErrorHandler.handle(error).failure!;
    }
  }
}
