// ignore_for_file: prefer_int_literals, flutter_style_todos

part of 'navigation.dart';

class RoutesName {
  static const String onBoarding = 'ONBOARDING';
  static const String landingPage = 'LandingPage';
  static const String dashboardScreen = 'Dashboard';
  static const String allahNameCardSwiper = 'AllahNameCardSwiperPage';
  //! Quran Screens
  static const String quranMajidMultipleTabs = 'QuranMajidMultipleTabs';
  static const String quranSurahTab = 'QuranSurahTab'; //* Surah tabs Name
  static const String quranSurahDetail =
      'QuranSurahDetail'; //* Quran Surah Detail
}

//! **********************************************     *********************  //
//! **********************************************     *********************  //
//! **********************************************     *********************  //

//! Custom Page Route Transition.
class CustomPageRoute<T> extends PageRouteBuilder<T> {
  CustomPageRoute({required this.page})
      : super(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0); //Todo=> Slide from Right to Left
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
  final Widget page;
}
