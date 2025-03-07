part of 'navigation.dart';

// ! All Pages Navigation handle
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.dashboardScreen:
      return CupertinoPageRoute(
        builder: (_) {
          return const DashBoardScreen();
        },
      );
    case RoutesName.landingPage:
      return CupertinoPageRoute(builder: (_) => const LandingPage());
    default:
      return MaterialPageRoute(
        builder: (_) => const Placeholder(
          // color: AppColors.rain,
          strokeWidth: 1,
        ),
      );
  }
}
