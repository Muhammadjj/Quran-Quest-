import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/surah_model/quran_surah_model.dart';

abstract class QuranSurahRepo {
  Future<Either<Failure, QuranSurahResponseModel>> getAllListOfSurah();
}
