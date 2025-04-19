// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_surah_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteSurahModelAdapter extends TypeAdapter<FavoriteSurahModel> {
  @override
  final int typeId = 0;

  @override
  FavoriteSurahModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteSurahModel(
      numberOfSurah: fields[0] as int,
      surahNameArabic: fields[1] as String,
      surahNameEnglish: fields[2] as String,
      verseCount: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteSurahModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.numberOfSurah)
      ..writeByte(1)
      ..write(obj.surahNameArabic)
      ..writeByte(2)
      ..write(obj.surahNameEnglish)
      ..writeByte(3)
      ..write(obj.verseCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteSurahModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
