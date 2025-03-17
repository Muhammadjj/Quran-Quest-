import 'package:fpdart/src/either.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/data_source/surah_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/surah_model/quran_surah_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/repo/quran_surah_repo.dart';

class SurahRepositoryImpl implements QuranSurahRepo {
  SurahRepositoryImpl({required this.remoteDataSourceImpl});
  final SurahRemoteDataSourceImpl remoteDataSourceImpl;
  @override
  Future<Either<Failure, QuranSurahResponseModel>> getAllListOfSurah() async {
    try {
      final repoImpl = await remoteDataSourceImpl.getAllSurahList();
      return right(repoImpl);
    } on Exception catch (error) {
      return left(ErrorHandler.handle(error).failure!);
    }
  }
}
