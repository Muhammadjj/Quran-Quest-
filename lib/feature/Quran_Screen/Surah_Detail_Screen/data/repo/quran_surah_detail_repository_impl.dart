import 'package:fpdart/src/either.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/data/data_source/quran_surah_detail_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/data/model/surah_detail_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/domain/repo/quran_surah_detail_repo.dart';

class QuranSurahDetailRepositoryImpl implements QuranSurahDetailRepo {
  QuranSurahDetailRepositoryImpl({required this.quranSurahDetailImpl});
  final QuranSurahDetailRemoteDataSource quranSurahDetailImpl;
  @override
  Future<Either<Failure, SurahDetailModel>> getSurahRepo({
    required int surahIndex,
  }) async {
    try {
      final result = await quranSurahDetailImpl.getSurahDetailDataSource(
        surahIndex: surahIndex,
      );
      return right(result);
    } on Exception catch (error) {
      return left(ErrorHandler.handle(error).failure!);
    }
  }
}
