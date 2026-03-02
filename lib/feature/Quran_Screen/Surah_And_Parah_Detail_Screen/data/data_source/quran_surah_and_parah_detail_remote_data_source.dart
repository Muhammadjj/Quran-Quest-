import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/Surah_Model/surah_detail_model.dart';

abstract class QuranSurahDetailRemoteDataSource {
  Future<SurahDetailModel> getSurahDetailDataSource({required int surahIndex});
  Future<QuranParahResponseModel> getAllParahDetails({required int parahIndex});
}

class QuranSurahDetailImpl implements QuranSurahDetailRemoteDataSource {
  @override
  Future<SurahDetailModel> getSurahDetailDataSource({
    required int surahIndex,
  }) async {
    try {
      final response = NetworkHelper(baseUrl: AL_QURAN_BASEURL);
      final resultOfJson = await response.get(
        endPoint: EndPoints.detailSurah(surahIndex: surahIndex),
      );

      return SurahDetailModel.fromJson(
        resultOfJson.data as Map<String, dynamic>,
      );
    } on Exception catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }

  @override
  Future<QuranParahResponseModel> getAllParahDetails({
    required int parahIndex,
  }) async {
    try {
      final parahGetBaseURL = NetworkHelper(baseUrl: AL_QURAN_BASEURL);

      final resultOfParah = await parahGetBaseURL.get(
        endPoint: EndPoints.detailsJuz(juzIndex: parahIndex),
      );

      return QuranParahResponseModel.fromJson(
        resultOfParah.data as Map<String, dynamic>,
      );
    } on Exception catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
