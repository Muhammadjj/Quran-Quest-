import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/data/model/surah_detail_model.dart';

abstract class QuranSurahDetailRemoteDataSource {
  Future<SurahDetailModel> getSurahDetailDataSource({required int surahIndex});
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
}
