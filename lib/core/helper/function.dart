import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:quran_quest/core/manager/managers.dart';
import 'package:quran_quest/export/export.dart';

dynamic initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

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
