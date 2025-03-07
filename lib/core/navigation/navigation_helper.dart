// ignore_for_file: strict_raw_type

part of 'navigation.dart';

class NavigationHelper {
  // ! Navigator Key
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  // ! Route Observer
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();
  // ! Scaffold State
  static final GlobalKey<ScaffoldMessengerState> scaffoldState =
      GlobalKey<ScaffoldMessengerState>();

  static Future<dynamic> navigateTo(
    String routeName, {
    Map<String, dynamic>? arguments,
    bool clean = false,
  }) {
    if (!clean) {
      return navigatorKey.currentState!
          .pushNamed(routeName, arguments: arguments);
    } else {
      return navigatorKey.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    }
  }

  // ! pushNamed
  static Future<dynamic> pushNamed(
    String routeName, {
    Object? arguments,
  }) async {
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  // ! goBack
  static void goBack() {
    return navigatorKey.currentState?.pop();
  }

  // ! push
  static Future<dynamic> push(
    Route<dynamic> route,
  ) async {
    return navigatorKey.currentState?.push(
      route,
    );
  }

  // ! Push to a route using a custom Route object with optional arguments
  static Future<dynamic> pushArguments(
    Widget page, {
    Object? arguments,
  }) async {
    return navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => page,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  // ! pushReplacementNamed
  static Future<dynamic> pushReplacementsNamed(String route) {
    return navigatorKey.currentState!.pushReplacementNamed(
      route,
    );
  }

  //! pushNamedAndRemoveUntil
  static Future<dynamic> pushNamedAndRemoveUntil(String newRouteName) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(newRouteName, (route) => false);
  }

  //! Function to push a widget and remove until the current route
  static Future<dynamic> pushAndRemoveUntil(Widget newPage) {
    return navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => newPage),
      (route) => false, // Removes all previous routes
    );
  }

  // ! pushReplacement
  static Future<dynamic> pushReplacements(Route<dynamic> route) {
    return navigatorKey.currentState!.pushReplacement(
      route,
    );
  }

  // ! Modified pushReplacement method with arguments
  static Future<dynamic> pushReplacementArgument(
    Widget page, {
    Object? arguments,
  }) {
    return navigatorKey.currentState!.pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
        settings:
            RouteSettings(arguments: arguments), // Pass the arguments here
      ),
    );
  }
}
