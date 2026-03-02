import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/core/usecases/usecases.dart';
import 'package:quran_quest/core/utils/type_def.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/domain/repo/quran_surah_and_parah_detail_repo.dart';

class ParahDetailUsecase
    implements UseCaseWithParams<QuranParahResponseModel, int> {
  ParahDetailUsecase({required this.quranSurahDetailRepo});
  final QuranSurahDetailRepo quranSurahDetailRepo;
  @override
  ResultFuture<QuranParahResponseModel> call(int params) async {
    try {
      return quranSurahDetailRepo.getParahDetailsRepo(parahIndex: params);
    } on Failure catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
