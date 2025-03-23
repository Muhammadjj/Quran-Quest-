import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/helper/function.dart';
import 'package:quran_quest/core/manager/managers.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/presentation/bloc/parah_detail_bloc.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/presentation/bloc/quran_surah_detail_bloc.dart';
import 'package:quran_quest/feature/app/app_Bloc/cubit/quran_theme_cubit.dart';
import 'package:quran_quest/generated/codegen_loader.g.dart';

void main() async {
  await initializeApp();
  final themeCubit = QuranThemeCubit();
  await themeCubit.loadTheme(); // Ensure theme is loaded before app starts
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ur')],
      path: 'assets/translations/',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: QuranQuest(themeCubit: themeCubit), // Pass the initialized cubit
    ),
  );
}

class QuranQuest extends StatelessWidget {
  const QuranQuest({
    required this.themeCubit,
    super.key,
  });
  final QuranThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(context.width, context.height),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => DependenceManager.sl<QuranSurahDetailBloc>(),
            ),
            BlocProvider.value(
              value: themeCubit, // Use the initialized cubit
            ),
            BlocProvider(
              create: (_) => DependenceManager.sl<ParahDetailBloc>(),
            ),
          ],
          child: BlocBuilder<QuranThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Quran Quest',
                navigatorKey: NavigationHelper.navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: RoutesName.landingPage,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                theme: QuranThemes.lightTheme,
                darkTheme: QuranThemes.darkTheme,
                themeMode: state.themeMode,
                themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
                themeAnimationDuration: const Duration(seconds: 2),
                themeAnimationStyle:
                    AnimationStyle(reverseCurve: Curves.easeInBack),
                // home:
              );
            },
          ),
        );
      },
    );
  }
}
