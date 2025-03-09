part of 'utils.dart';

final ThemeData quranTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: AppColors.primaryGreen,
  colorScheme: _getQuranColorScheme(),
  textTheme: _getQuranTextTheme(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: AppColors.background,
  dividerTheme: const DividerThemeData(
    thickness: 1,
    space: 1,
    color: AppColors.divider,
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

// ! Text Theme for Quran App
TextTheme _getQuranTextTheme() {
  return TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'MeQuran',
      color: AppColors.kWhite,
      fontSize: 40.sp,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 20.sp,
      fontFamily: 'MeQuran', //* Quranic Font
      fontWeight: FontWeight.w600,
      height: 2,
      color: AppColors.black,
    ),
    bodySmall: TextStyle(
      fontFamily: 'AmiriQuran',
      fontSize: 14.sp,
      color: AppColors.secondaryText,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'AmiriQuran',
      color: AppColors.primaryText,
      fontSize: 18.sp,
      height: 1.2,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontFamily: 'AmiriQuran',
      color: AppColors.primaryGreen,
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Amiri',
      fontSize: 16.sp,
      color: AppColors.primaryText,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Amiri',
      fontSize: 14.sp,
      color: AppColors.primaryText,
      fontWeight: FontWeight.w500,
    ),
  );
}

// ! Color Scheme for Quran App
ColorScheme _getQuranColorScheme() {
  return const ColorScheme.light(
    brightness: Brightness.light,
    primary: AppColors.primaryGreen,
    onPrimary: AppColors.primaryText,
    onError: AppColors.errorRed,
    surface: AppColors.background,
  );
}
