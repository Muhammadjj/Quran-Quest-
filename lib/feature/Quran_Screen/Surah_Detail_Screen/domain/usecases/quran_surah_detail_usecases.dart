import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/core/usecases/usecases.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/data/model/surah_detail_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/domain/repo/quran_surah_detail_repo.dart';

class QuranSurahDetailUsecases
    extends UseCaseWithParams<SurahDetailModel, int> {
  QuranSurahDetailUsecases({required this.quranSurahDetailRepo});
  final QuranSurahDetailRepo quranSurahDetailRepo;
  @override
  Future<Either<Failure, SurahDetailModel>> call(int params) async {
    try {
      return quranSurahDetailRepo.getSurahRepo(surahIndex: params);
    } on Exception catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
