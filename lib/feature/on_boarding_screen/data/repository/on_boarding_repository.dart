import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/core/utils/type_def.dart';
import 'package:quran_quest/feature/on_boarding_screen/data/remote_source/on_boarding_local_data_source.dart';
import 'package:quran_quest/feature/on_boarding_screen/domain/repo/cache.dart';

class OnBoardingRepoImpl implements OnBoardingRepo {
  const OnBoardingRepoImpl({required this.localDataSource});

  final OnBoardingLocalDataSource localDataSource;

  @override
  ResultFuture<void> cacheFirstTime() async {
    try {
      await localDataSource.cacheFirstTimer();
      return const Right(null);
    } on Exception catch (error) {
      return Left(ErrorHandler.handle(error).failure!);
    }
  }

  @override
  ResultFuture<bool> cacheIfUserExistOrNot() async {
    try {
      final result = await localDataSource.checkIfUserIsFirstTimer();
      return Right(result);
    } on Exception catch (error) {
      return Left(ErrorHandler.handle(error).failure!);
    }
  }
}
