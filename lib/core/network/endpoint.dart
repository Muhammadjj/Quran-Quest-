// ignore_for_file: constant_identifier_names, flutter_style_todos

part of 'network.dart';

// Todo => Quran HUB BASEURL
const String QURAN_HUB_BASEURL = 'https://api.quranhub.com/v1';
const String AL_QURAN_BASEURL = 'https://api.alquran.cloud/v1';

abstract class EndPoints {
// Todo => Quran HUB RANDOM AYAH ENDPOINT.
  static const String randomAyah = '/ayah/random';

  //! AL_QURAN ENDPOINTS
  static const String getSurahList = '/surah';
  static String detailSurah({required int surahIndex}) {
    return '/surah/$surahIndex/ar.alafasy';
  }
}
