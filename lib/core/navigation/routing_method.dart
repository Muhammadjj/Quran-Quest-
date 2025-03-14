part of 'navigation.dart';

// ! All Pages Navigation handle
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    //! 1
    case RoutesName.dashboardScreen:
      return CustomPageRoute(
        page: const DashBoardScreen(),
      );
    //! 2
    case RoutesName.landingPage:
      return CustomPageRoute(page: const LandingPage());
    //! 3
    case RoutesName.allahNameCardSwiper:
      return CustomPageRoute(
        page: const AllahNameCardSwiperPage(),
      );
    //! 4
    case RoutesName.quranMajidMultipleTabs:
      return CustomPageRoute(page: const QuranTabsScreen());
    //! 5
    case RoutesName.quranSurahTab:
      return CustomPageRoute(
        page: const BySurahScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('No Route Found'),
          ),
        ),
      );
  }
}
