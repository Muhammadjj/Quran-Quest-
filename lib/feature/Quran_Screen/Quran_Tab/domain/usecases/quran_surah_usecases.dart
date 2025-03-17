import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/core/usecases/usecases.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/surah_model/quran_surah_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/repo/quran_surah_repo.dart';

class GetQuranSurahListUseCase
    extends UseCaseWithOutParams<QuranSurahResponseModel> {
  GetQuranSurahListUseCase({required this.surahRepo});
  final QuranSurahRepo surahRepo;
  @override
  Future<Either<Failure, QuranSurahResponseModel>> call() {
    // try {
    return surahRepo.getAllListOfSurah();
    // } on Exception catch (error) {
    //   return Future.error(ErrorHandler.handle(error).failure!);
    // }
  }
}
