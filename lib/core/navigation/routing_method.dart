part of 'navigation.dart';

// ! All Pages Navigation handle
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // 1
    case RoutesName.dashboardScreen:
      return CupertinoPageRoute(
        builder: (_) {
          return const DashBoardScreen();
        },
      );
    // 2
    case RoutesName.landingPage:
      return CupertinoPageRoute(builder: (_) => const LandingPage());
    // 3
    case RoutesName.allahNameCardSwiper:
      return CupertinoPageRoute(
          builder: (_) => const AllahNameCardSwiperPage());
    default:
      return MaterialPageRoute(
        builder: (_) => const Placeholder(
          // color: AppColors.rain,
          strokeWidth: 1,
        ),
      );
  }
}
