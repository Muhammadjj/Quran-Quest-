part of 'utils.dart';

final ThemeData quranMajidTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: Colors.green.shade700,
  colorScheme: _getQuranColorScheme(),
  textTheme: _getQuranTextTheme(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.green.shade50,
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

TextTheme _getQuranTextTheme() {
  return TextTheme(
    displayLarge: TextStyle(
      // fontFamily: 'AmiriQuran',
      fontSize: 40.sp,
      color: Colors.black,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.sp,
      // fontFamily: 'MeQuran',
      color: Colors.black87,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 14.sp,
      // fontFamily: 'MeQuran',
      color: Colors.black54,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      // fontFamily: 'AmiriQuran',
      fontSize: 18.sp,
      color: Colors.green.shade800,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      // fontFamily: 'AmiriQuran',
      fontSize: 20.sp,
      color: Colors.green.shade900,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.kBlack,
    ),
  );
}

ColorScheme _getQuranColorScheme() {
  return ColorScheme.light(
    primary: Colors.green.shade700,
    onPrimary: Colors.white,
    surface: Colors.green.shade50,
    onSurface: Colors.black,
    onError: Colors.redAccent,
  );
}
