import 'package:fpdart/src/either.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/data_source/quran_surah_and_parah_detail_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/Surah_Model/surah_detail_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/domain/repo/quran_surah_and_parah_detail_repo.dart';

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

  @override
  Future<Either<Failure, QuranParahResponseModel>> getParahDetailsRepo({
    required int parahIndex,
  }) async {
    try {
      final resultOfParah = await quranSurahDetailImpl.getAllParahDetails(
        parahIndex: parahIndex,
      );

      return right(resultOfParah);
    } on Failure catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
