import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/data/model/parah_model/quran_parah_response_model.dart';

abstract class ParahDetailRepo {
  Future<Either<Failure, QuranParahResponseModel>> getParahDetailsRepo({
    required int parahIndex,
  });
}
