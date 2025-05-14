import 'package:quran_quest/core/usecases/usecases.dart';
import 'package:quran_quest/core/utils/type_def.dart';
import 'package:quran_quest/feature/on_boarding_screen/domain/repo/cache.dart';

class CacheFirstTime extends UseCaseWithOutParams<void> {
  CacheFirstTime({required this.repo});
  OnBoardingRepo repo;
  @override
  ResultFuture<void> call() => repo.cacheFirstTime();
}
