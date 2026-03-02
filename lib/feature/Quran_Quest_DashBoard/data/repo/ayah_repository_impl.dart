import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/data_source/ayah_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/Quran_Flash_Card/quran_flash_cards_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/repo/random_repo.dart';

class AyahRepositoryImpl implements AyahRepository {
  AyahRepositoryImpl({required this.remoteDataSource});
  final AyahRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, RandomAyah>> fetchRandomAyah() async {
    try {
      final ayah = await remoteDataSource.getRandomAyah();

      return right(ayah);
    } on Exception catch (error) {
      return left(ErrorHandler.handle(error).failure!);
    }
  }

  @override
  Future<Either<Failure, QuranFlashCardModel>> fetchFlashCardLanguage({
    required String selectLanguage,
  }) async {
    try {
      final flashCard = await remoteDataSource.getFlashCard(selectLanguage);
      return right(flashCard);
    } on Exception catch (error) {
      return left(ErrorHandler.handle(error).failure!);
    }
  }
}
