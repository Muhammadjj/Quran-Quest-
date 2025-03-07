// ignore_for_file: constant_identifier_names

part of 'network.dart';

const String QURAN_HUB_BASEURL = 'https://api.quranhub.com/v1';

abstract class EndPoints {
  static const String randomAyah = '/ayah/random';
  static const String weatherNews = '/top-headlines';
}
