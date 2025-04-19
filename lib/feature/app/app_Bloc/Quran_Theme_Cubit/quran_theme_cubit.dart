import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'quran_theme_state.dart';

class QuranThemeCubit extends Cubit<ThemeState> {
  QuranThemeCubit() : super(ThemeState(themeMode: ThemeMode.light));

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('isDarkTheme')) {
      final isDark = prefs.getBool('isDarkTheme')!;
      emit(ThemeState(themeMode: isDark ? ThemeMode.dark : ThemeMode.light));
    } else {
      // Use system theme if no preference is saved
      final brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      emit(
        ThemeState(
          themeMode:
              brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light,
        ),
      );
    }
  }

  Future<void> toggleTheme() async {
    final newTheme =
        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkTheme', newTheme == ThemeMode.dark);

    emit(ThemeState(themeMode: newTheme));
  }
}
