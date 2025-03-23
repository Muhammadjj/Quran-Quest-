part of 'utils.dart';

class QuranThemes {
  // ! Manage Light Theme.
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.green.shade700,
    colorScheme: _getQuranColorSchemeLight(),
    textTheme: _getQuranTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.kWhite,
    dividerTheme: DividerThemeData(
      thickness: 1,
      space: 1,
      color: Colors.grey.shade300,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        padding: EdgeInsets.zero,
      ),
    ),
  );
  // ! Manage Dark Theme.
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.green.shade900,
    colorScheme: _getQuranColorSchemeDark(),
    textTheme: _getQuranTextThemeDark(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.kCharcoalGray,
    dividerTheme: DividerThemeData(
      thickness: 1,
      space: 1,
      color: Colors.grey.shade700,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        padding: EdgeInsets.zero,
      ),
    ),
  );

  static ColorScheme _getQuranColorSchemeLight() {
    return ColorScheme.light(
      primary: AppColors.kWhite,
      onPrimary: AppColors.kWhite,
      surface: AppColors.kWhite,
      onSurface: AppColors.kBlack,
      onError: AppColors.kErrorRedColors,
    );
  }

  static ColorScheme _getQuranColorSchemeDark() {
    return ColorScheme.dark(
      primary: AppColors.kBlack,
      onPrimary: AppColors.kWhite,
      surface: AppColors.kDimGray,
      onSurface: AppColors.kBlack,
      onError: AppColors.kErrorRedColors,
    );
  }

  static TextTheme _getQuranTextTheme() {
    return TextTheme(
      displayLarge: const TextStyle(
        fontSize: 40,
        color: Colors.black,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: const TextStyle(
        fontSize: 16,
        color: Colors.black87,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: const TextStyle(
        fontSize: 14,
        // fontFamily: 'MeQuran',
        color: Colors.black54,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        // fontFamily: 'AmiriQuran',
        color: Colors.green.shade800,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        // fontFamily: 'AmiriQuran',
        color: Colors.green.shade900,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: AppColors.kBlack,
      ),
      titleSmall: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        // color: AppColors.kBlack,
      ),
      labelSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: AppColors.kBlack,
      ),
    );
  }

  static TextTheme _getQuranTextThemeDark() {
    return TextTheme(
      displayLarge: const TextStyle(
        fontSize: 40,
        // fontFamily: 'AmiriQuran',
        color: Colors.white,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: const TextStyle(
        fontSize: 16,
        // fontFamily: 'MeQuran',
        color: Colors.white70,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: const TextStyle(
        fontSize: 14,
        // fontFamily: 'MeQuran',
        color: Colors.white60,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        // fontFamily: 'AmiriQuran',
        color: Colors.green.shade300,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        // fontFamily: 'AmiriQuran',
        color: Colors.green.shade400,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: AppColors.kWhite,
      ),
      titleSmall: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        // color: AppColors.kBlack,
      ),
      labelSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: AppColors.kWhite,
      ),
    );
  }
}
