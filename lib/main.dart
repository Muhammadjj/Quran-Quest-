import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/app/location_bloc/location_bloc.dart';
import 'package:quran_quest/app/widget/widget.dart';
import 'package:quran_quest/core/helper/function.dart';
import 'package:quran_quest/core/manager/managers.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/widgets.dart';
import 'package:quran_quest/feature/app/app_Bloc/Quran_Theme_Cubit/quran_theme_cubit.dart';
import 'package:quran_quest/feature/on_boarding_screen/data/remote_source/on_boarding_local_data_source.dart';
import 'package:quran_quest/feature/on_boarding_screen/presentation/bloc/quran_onboarding_bloc.dart';
import 'package:quran_quest/feature/on_boarding_screen/presentation/view/OnBoarding_Screen/quran_quest_onboarding.dart';
import 'package:quran_quest/generated/codegen_loader.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    final prefs = DependenceManager.get<SharedPreferences>();
    if (kDebugMode) log('Starting Apps: ${prefs.getBool(kFirstTimerKey)}');

    return ScreenUtilInit(
      designSize: Size(context.width, context.height),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: themeCubit, // Use the initialized cubit
            ),
            BlocProvider(
              create: (context) => LocationBloc()..add(GetLocationEvent()),
            ),
            BlocProvider(
              create: (context) => DependenceManager.sl<QuranOnBoardingBloc>(),
            ),
          ],
          child: BlocBuilder<QuranThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Quran Quest',
                navigatorKey: NavigationHelper.navigatorKey,
                onGenerateRoute: generateRoute,
                // initialRoute: RoutesName.landingPage,
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
                home: prefs.getBool(kFirstTimerKey) == true
                    ? BlocBuilder<LocationBloc, LocationState>(
                        builder: (context, state) {
                          if (state is AskForLocationPermissionState) {
                            return const WaitingPermissionWidget();
                          } else if (state is LocationPermissionDeniedState) {
                            return const PermissionDeniedWidget();
                          } else if (state is LocationServiceDisabledState) {
                            return const LocationServiceDisabledWidget();
                          } else if (state is FetchCurrentLocationState) {
                            return const LandingPage();
                          } else {
                            return const Scaffold(
                              body: Center(
                                child:
                                    Text('No Location Found Please try again'),
                              ),
                            );
                          }
                        },
                      )
                    : const OnBoardingQuranQuest(),
              );
            },
          ),
        );
      },
    );
  }
}
