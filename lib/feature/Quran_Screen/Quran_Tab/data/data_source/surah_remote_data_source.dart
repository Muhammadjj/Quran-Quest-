// ignore_for_file: one_member_abstracts

import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/surah_model/quran_surah_model.dart';

// Hit All Surah List (Abstract class )
abstract class SurahRemoteDataSource {
  Future<QuranSurahResponseModel> getAllSurahList();
}

// Hit all surah list.
class SurahRemoteDataSourceImpl extends SurahRemoteDataSource {
  @override
  Future<QuranSurahResponseModel> getAllSurahList() async {
    try {
      final alQuranBaseUrl = NetworkHelper(baseUrl: AL_QURAN_BASEURL);

      final getSurahList =
          await alQuranBaseUrl.get(endPoint: EndPoints.getSurah);

      return QuranSurahResponseModel.fromJson(
        getSurahList.data as Map<String, dynamic>,
      );
    } on Exception catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
