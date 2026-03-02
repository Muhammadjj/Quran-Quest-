import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/Surah_Model/surah_detail_model.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';

abstract class QuranSurahDetailRepo {
  Future<Either<Failure, SurahDetailModel>> getSurahRepo({
    required int surahIndex,
  });

  Future<Either<Failure, QuranParahResponseModel>> getParahDetailsRepo({
    required int parahIndex,
  });
}
