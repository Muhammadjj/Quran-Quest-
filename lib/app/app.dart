// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:quran_quest/export/export.dart';
// import 'package:quran_quest/feature/app/app_Bloc/Quran_Theme_Cubit/quran_theme_cubit.dart';
// import 'package:quran_quest/feature/on_boarding_screen/presentation/view/OnBoarding_Screen/quran_quest_onboarding.dart';

// class QuranQuest extends StatelessWidget {
//   const QuranQuest({
//     required this.themeCubit,
//     super.key,
//   });
//   final QuranThemeCubit themeCubit;

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: Size(context.width, context.height),
//       minTextAdapt: true,
//       builder: (context, child) {
//         return MultiBlocProvider(
//           providers: [
//             BlocProvider.value(
//               value: themeCubit, // Use the initialized cubit
//             ),
//           ],
//           child: BlocBuilder<QuranThemeCubit, ThemeState>(
//             builder: (context, state) {
//               return MaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 title: 'Quran Quest',
//                 navigatorKey: NavigationHelper.navigatorKey,
//                 onGenerateRoute: generateRoute,
//                 // initialRoute: RoutesName.landingPage,
//                 localizationsDelegates: context.localizationDelegates,
//                 supportedLocales: context.supportedLocales,
//                 locale: context.locale,
//                 theme: QuranThemes.lightTheme,
//                 darkTheme: QuranThemes.darkTheme,
//                 themeMode: state.themeMode,
//                 themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
//                 themeAnimationDuration: const Duration(seconds: 2),
//                 themeAnimationStyle:
//                     AnimationStyle(reverseCurve: Curves.easeInBack),
//                 home: const OnBoardingQuranQuest(),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
