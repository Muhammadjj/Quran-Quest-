import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';

abstract class QuranParahDetailRemoteDataSource {
  Future<QuranParahResponseModel> getAllParahDetails({required int parahIndex});
}

class ParahRemoteDataSourceImpl implements QuranParahDetailRemoteDataSource {
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
