//! RandomAyah Model for Random Ayah
class RandomAyah {
  RandomAyah({
    this.number,
    this.text,
    this.edition,
    this.surah,
    this.numberInSurah,
    this.juz,
    this.manzil,
    this.page,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  factory RandomAyah.fromJson(Map<String, dynamic> json) {
    // Extract the 'data' field from the JSON
    final data = json['data'] as Map<String, dynamic>?;

    // If 'data' is null, return a RandomAyah object with all fields as null
    if (data == null) {
      return RandomAyah();
    }

    // Parse the 'data' field
    return RandomAyah(
      number: data['number'] as int?,
      text: data['text'] as String?,
      edition: data['edition'] != null
          ? Edition.fromJson(data['edition'] as Map<String, dynamic>)
          : null,
      surah: data['surah'] != null
          ? Surah.fromJson(data['surah'] as Map<String, dynamic>)
          : null,
      numberInSurah: data['numberInSurah'] as int?,
      juz: data['juz'] as int?,
      manzil: data['manzil'] as int?,
      page: data['page'] as int?,
      ruku: data['ruku'] as int?,
      hizbQuarter: data['hizbQuarter'] as int?,
      sajda: data['sajda'] as bool?,
    );
  }

  int? number;
  String? text;
  Edition? edition;
  Surah? surah;
  int? numberInSurah;
  int? juz;
  int? manzil;
  int? page;
  int? ruku;
  int? hizbQuarter;
  bool? sajda;

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'text': text,
      'edition': edition?.toJson(),
      'surah': surah?.toJson(),
      'numberInSurah': numberInSurah,
      'juz': juz,
      'manzil': manzil,
      'page': page,
      'ruku': ruku,
      'hizbQuarter': hizbQuarter,
      'sajda': sajda,
    };
  }
}

//! Edition Model for Random Ayah
class Edition {
  Edition({
    this.identifier,
    this.language,
    this.name,
    this.englishName,
    this.format,
    this.type,
    this.direction,
  });

  factory Edition.fromJson(Map<String, dynamic> json) {
    return Edition(
      identifier: json['identifier'] as String?,
      language: json['language'] as String?,
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      format: json['format'] as String?,
      type: json['type'] as String?,
      direction: json['direction'] as String?,
    );
  }

  String? identifier;
  String? language;
  String? name;
  String? englishName;
  String? format;
  String? type;
  String? direction;

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'language': language,
      'name': name,
      'englishName': englishName,
      'format': format,
      'type': type,
      'direction': direction,
    };
  }
}

//! Surah Model for Random Ayah
class Surah {
  Surah({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.numberOfAyahs,
  });

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      number: json['number'] as int?,
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      englishNameTranslation: json['englishNameTranslation'] as String?,
      revelationType: json['revelationType'] as String?,
      numberOfAyahs: json['numberOfAyahs'] as int?,
    );
  }

  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  int? numberOfAyahs;

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
      'englishName': englishName,
      'englishNameTranslation': englishNameTranslation,
      'revelationType': revelationType,
      'numberOfAyahs': numberOfAyahs,
    };
  }
}
