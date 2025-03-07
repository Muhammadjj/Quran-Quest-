// ignore_for_file: one_member_abstracts

import 'package:fpdart/fpdart.dart';
import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';

abstract class AyahRepository {
  Future<Either<Failure, RandomAyah>> fetchRandomAyah();
}
