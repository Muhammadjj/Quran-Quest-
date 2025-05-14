import 'package:quran_quest/core/usecases/usecases.dart';
import 'package:quran_quest/core/utils/type_def.dart';
import 'package:quran_quest/feature/on_boarding_screen/domain/repo/cache.dart';

class CacheIfUserExistOrNot extends UseCaseWithOutParams<bool> {
  CacheIfUserExistOrNot({
    required this.repo,
  });
  OnBoardingRepo repo;
  @override
  ResultFuture<bool> call() => repo.cacheIfUserExistOrNot();
}
