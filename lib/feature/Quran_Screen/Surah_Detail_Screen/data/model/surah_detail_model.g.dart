// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahDetailModelImpl _$$SurahDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahDetailModelImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
      data: SurahData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahDetailModelImplToJson(
        _$SurahDetailModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$SurahDataImpl _$$SurahDataImplFromJson(Map<String, dynamic> json) =>
    _$SurahDataImpl(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      numberOfAyahs: (json['numberOfAyahs'] as num).toInt(),
      ayahs: (json['ayahs'] as List<dynamic>)
          .map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
      edition: Edition.fromJson(json['edition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahDataImplToJson(_$SurahDataImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'numberOfAyahs': instance.numberOfAyahs,
      'ayahs': instance.ayahs,
      'edition': instance.edition,
    };

_$AyahImpl _$$AyahImplFromJson(Map<String, dynamic> json) => _$AyahImpl(
      number: (json['number'] as num).toInt(),
      audio: json['audio'] as String,
      audioSecondaryUrls: (json['audioSecondary'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      text: json['text'] as String,
      ayahNumber: (json['numberInSurah'] as num).toInt(),
      juz: (json['juz'] as num).toInt(),
      manzil: (json['manzil'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      ruku: (json['ruku'] as num).toInt(),
      hizbQuarter: (json['hizbQuarter'] as num).toInt(),
      sajda: json['sajda'] as bool,
    );

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'audio': instance.audio,
      'audioSecondary': instance.audioSecondaryUrls,
      'text': instance.text,
      'numberInSurah': instance.ayahNumber,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };

_$EditionImpl _$$EditionImplFromJson(Map<String, dynamic> json) =>
    _$EditionImpl(
      identifier: json['identifier'] as String,
      language: json['language'] as String,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      format: json['format'] as String,
      type: json['type'] as String,
      direction: json['direction'],
    );

Map<String, dynamic> _$$EditionImplToJson(_$EditionImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
      'direction': instance.direction,
    };
