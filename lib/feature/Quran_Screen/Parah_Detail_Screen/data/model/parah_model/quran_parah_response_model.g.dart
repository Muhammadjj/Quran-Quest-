// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_parah_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranParahResponseModelImpl _$$QuranParahResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranParahResponseModelImpl(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuranParahResponseModelImplToJson(
        _$QuranParahResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      number: (json['number'] as num?)?.toInt(),
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => Ayahs.fromJson(e as Map<String, dynamic>))
          .toList(),
      surahs: json['surahs'] == null
          ? null
          : Surahs.fromJson(json['surahs'] as Map<String, dynamic>),
      edition: json['edition'] == null
          ? null
          : Edition.fromJson(json['edition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'ayahs': instance.ayahs,
      'surahs': instance.surahs,
      'edition': instance.edition,
    };

_$AyahsImpl _$$AyahsImplFromJson(Map<String, dynamic> json) => _$AyahsImpl(
      number: (json['number'] as num?)?.toInt(),
      text: json['text'] as String?,
      surah: json['surah'] == null
          ? null
          : Surah.fromJson(json['surah'] as Map<String, dynamic>),
      numberInSurah: (json['numberInSurah'] as num?)?.toInt(),
      juz: (json['juz'] as num?)?.toInt(),
      manzil: (json['manzil'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      ruku: (json['ruku'] as num?)?.toInt(),
      hizbQuarter: (json['hizbQuarter'] as num?)?.toInt(),
      sajda: json['sajda'] as bool?,
    );

Map<String, dynamic> _$$AyahsImplToJson(_$AyahsImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'surah': instance.surah,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      englishNameTranslation: json['englishNameTranslation'] as String?,
      revelationType: json['revelationType'] as String?,
      numberOfAyahs: (json['numberOfAyahs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'numberOfAyahs': instance.numberOfAyahs,
    };

_$SurahsImpl _$$SurahsImplFromJson(Map<String, dynamic> json) => _$SurahsImpl(
      s41: json['s41'] == null
          ? null
          : Surah.fromJson(json['s41'] as Map<String, dynamic>),
      s42: json['s42'] == null
          ? null
          : Surah.fromJson(json['s42'] as Map<String, dynamic>),
      s43: json['s43'] == null
          ? null
          : Surah.fromJson(json['s43'] as Map<String, dynamic>),
      s44: json['s44'] == null
          ? null
          : Surah.fromJson(json['s44'] as Map<String, dynamic>),
      s45: json['s45'] == null
          ? null
          : Surah.fromJson(json['s45'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahsImplToJson(_$SurahsImpl instance) =>
    <String, dynamic>{
      's41': instance.s41,
      's42': instance.s42,
      's43': instance.s43,
      's44': instance.s44,
      's45': instance.s45,
    };

_$EditionImpl _$$EditionImplFromJson(Map<String, dynamic> json) =>
    _$EditionImpl(
      identifier: json['identifier'] as String?,
      language: json['language'] as String?,
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      format: json['format'] as String?,
      type: json['type'] as String?,
      direction: json['direction'] as String?,
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
