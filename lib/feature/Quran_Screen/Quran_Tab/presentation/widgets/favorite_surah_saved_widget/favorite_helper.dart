part of '../widget.dart';

class FavoriteSurahHelper {
  FavoriteSurahHelper._();
  static final Box<FavoriteSurahModel> favoriteKeys =
      Hive.box<FavoriteSurahModel>(QuranKeys.favoriteSurahModelBox);

  static bool isFavorite(int surahNumber) {
    return favoriteKeys.containsKey(surahNumber);
  }

  static void toggleFavorite(FavoriteSurahModel favoriteSurahModel) {
    final number = favoriteSurahModel.numberOfSurah;
    if (favoriteKeys.containsKey(number)) {
      favoriteKeys.delete(number);
      log('Removed from favorites: ${favoriteSurahModel.surahNameEnglish}');
    } else {
      favoriteKeys.put(number, favoriteSurahModel);
      log('Added to favorites: ${favoriteSurahModel.surahNameEnglish}');
    }
  }
}

class HiveHelper<T> {
  // Constructor to initialize box name.
  HiveHelper({required this.boxName});
  final String boxName;

  // Open a box for the given type T.
  Future<Box<T>> _openBox() async {
    try {
      if (!Hive.isBoxOpen(boxName)) {
        return await Hive.openBox<T>(boxName);
      }
      return Hive.box<T>(boxName);
    } catch (e) {
      throw Exception('Failed to open box: $e');
    }
  }

  // Put data into the box.
  Future<void> put(String key, T value) async {
    try {
      final box = await _openBox();
      await box.put(key, value);
    } catch (e) {
      throw Exception('Failed to put value: $e');
    }
  }

  // Get data from the box.
  Future<T?> get(String key) async {
    try {
      final box = await _openBox();
      return box.get(key);
    } catch (e) {
      throw Exception('Failed to get value: $e');
    }
  }

  // Get all values in the box as a list.
  Future<List<T>> getAll() async {
    try {
      final box = await _openBox();
      return box.values.toList();
    } catch (e) {
      throw Exception('Failed to get all values: $e');
    }
  }

  // Delete data from the box.
  Future<void> delete(String key) async {
    try {
      final box = await _openBox();
      await box.delete(key);
    } catch (e) {
      throw Exception('Failed to delete value: $e');
    }
  }

  // Clear all values in the box.
  Future<void> clear() async {
    try {
      final box = await _openBox();
      await box.clear();
    } catch (e) {
      throw Exception('Failed to clear the box: $e');
    }
  }

  // Check if a key exists in the box.
  Future<bool> containsKey(String key) async {
    try {
      final box = await _openBox();
      return box.containsKey(key);
    } catch (e) {
      throw Exception('Failed to check key: $e');
    }
  }

  // Get a Listenable for the box for real-time updates.
  ValueListenable<Box<T>> listenable() {
    try {
      return Hive.box<T>(boxName).listenable();
    } catch (e) {
      throw Exception('Failed to get listenable: $e');
    }
  }
}
