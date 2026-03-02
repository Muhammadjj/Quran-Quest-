import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/core/usecases/usecases.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/repo/random_repo.dart';

class GetRandomAyah implements UseCaseWithOutParams<RandomAyah> {
  GetRandomAyah({required this.repository});
  final AyahRepository repository;

  @override
  Future<Either<Failure, RandomAyah>> call() async {
    return repository.fetchRandomAyah();
  }
}
