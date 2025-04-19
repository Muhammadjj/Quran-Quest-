import 'package:quran_quest/core/network/network.dart';
import 'package:quran_quest/core/usecases/usecases.dart';
import 'package:quran_quest/core/utils/type_def.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/Quran_Flash_Card/quran_flash_cards_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/repo/random_repo.dart';

class QuranFlashCardUsecases
    extends UseCaseWithParams<QuranFlashCardModel, String> {
  QuranFlashCardUsecases({required this.repository});
  final AyahRepository repository;

  @override
  ResultFuture<QuranFlashCardModel> call(String params) async {
    try {
      return repository.fetchFlashCardLanguage(
        selectLanguage: params,
      );
    } on Exception catch (error) {
      return Future.error(ErrorHandler.handle(error).failure!);
    }
  }
}
