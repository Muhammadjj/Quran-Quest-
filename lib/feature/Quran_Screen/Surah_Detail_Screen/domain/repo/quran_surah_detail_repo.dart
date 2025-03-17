import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/data/model/surah_detail_model.dart';

abstract class QuranSurahDetailRepo {
  Future<Either<Failure, SurahDetailModel>> getSurahRepo({
    required int surahIndex,
  });
}
