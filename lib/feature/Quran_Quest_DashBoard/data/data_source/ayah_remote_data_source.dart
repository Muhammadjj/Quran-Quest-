// ignore_for_file: one_member_abstracts

import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';

// Hit Random Ayah API
abstract class AyahRemoteDataSource {
  Future<RandomAyah> getRandomAyah();
}

class AyahRemoteDataSourceImpl implements AyahRemoteDataSource {
  AyahRemoteDataSourceImpl();

  @override
  Future<RandomAyah> getRandomAyah() async {
    try {
      final networkHelper = NetworkHelper(baseUrl: QURAN_HUB_BASEURL);
      final response = await networkHelper.get(endPoint: EndPoints.randomAyah);
      return RandomAyah.fromJson(response.data as Map<String, dynamic>);
    } on Exception catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
