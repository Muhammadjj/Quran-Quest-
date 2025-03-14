// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranSurahResponseModelImpl _$$QuranSurahResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranSurahResponseModelImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => QuranSurahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranSurahResponseModelImplToJson(
        _$QuranSurahResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$QuranSurahModelImpl _$$QuranSurahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranSurahModelImpl(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      numberOfAyahs: (json['numberOfAyahs'] as num).toInt(),
    );

Map<String, dynamic> _$$QuranSurahModelImplToJson(
        _$QuranSurahModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'numberOfAyahs': instance.numberOfAyahs,
    };
