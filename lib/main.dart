import 'package:easy_localization/easy_localization.dart';
import 'package:quran_quest/core/helper/function.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/generated/codegen_loader.g.dart';

void main() async {
  await initializeApp();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ur')],
      path: 'assets/translations/',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const QuranQuest(),
    ),
  );
}

class QuranQuest extends StatelessWidget {
  const QuranQuest({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(context.width, context.height),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Quran Quest',
          navigatorKey: NavigationHelper.navigatorKey,
          onGenerateRoute: generateRoute,
          initialRoute: RoutesName.landingPage,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: quranMajidTheme,
          // home:
        );
      },
    );
  }
}
