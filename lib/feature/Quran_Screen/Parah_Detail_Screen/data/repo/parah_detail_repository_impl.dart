import 'package:fpdart/src/either.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/data/data_source/quran_parah_detail_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/domain/repo/parah_detail_repo.dart';

class ParahDetailRepositoryImpl implements ParahDetailRepo {
  ParahDetailRepositoryImpl({required this.quranParahDetailRemoteDataSource});
  QuranParahDetailRemoteDataSource quranParahDetailRemoteDataSource;
  @override
  Future<Either<Failure, QuranParahResponseModel>> getParahDetailsRepo({
    required int parahIndex,
  }) async {
    try {
      final resultOfParah =
          await quranParahDetailRemoteDataSource.getAllParahDetails(
        parahIndex: parahIndex,
      );

      return right(resultOfParah);
    } on Failure catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
