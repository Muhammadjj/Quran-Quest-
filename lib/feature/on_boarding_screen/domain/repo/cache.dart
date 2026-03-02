import 'package:quran_quest/core/utils/type_def.dart';

abstract class OnBoardingRepo {
  OnBoardingRepo();
  ResultFuture<void> cacheFirstTime();
  ResultFuture<bool> cacheIfUserExistOrNot();
}
