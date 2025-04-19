import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quran_quest/core/Quran_Quest_Keys/quran_key.dart';
import 'package:quran_quest/core/manager/managers.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/model/Favorite_Surah_Saved_Hive_Model/favorite_surah_model.dart';

dynamic initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  // => Initialize Box
  await Hive.initFlutter();

  ///****************************************************************** */
  //! ✅ Register Adapters (Favorite-Surah-Model) Hive adapters
  Hive.registerAdapter(FavoriteSurahModelAdapter());

  //! ✅ Hive Created (Favorite-Surah-Model) Open Box
  await Hive.openBox<FavoriteSurahModel>(
    QuranKeys.favoriteSurahModelBox,
  );

  log('xxxxxxxxxxx => Hive Box Created: ');
  //! Start App Register DI
  await DependenceManager.init();
  await EasyLocalization.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((onValue) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  });
}
