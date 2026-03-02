// ignore_for_file: flutter_style_todos

import 'package:quran_quest/export/export.dart';

class PageContent {
  PageContent({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.bgColor,
  });

  //Todo=>  Quran Page Content
  PageContent.quran()
      : this(
          image: AppImages.onBoardingQuran,
          title: 'Reading Quran is a Blessing',
          subtitle: 'Read Quran with translation and audio.',
          bgColor: AppColors.kBlue,
        );

  //Todo=>  Allah Names Page Content
  PageContent.allahNames()
      : this(
          image: AppImages.onBoardAllahName,
          title: 'Allah Names and Random Ayah',
          subtitle: 'Learn about Allah names and Quran verses.',
          bgColor: AppColors.kBlueGray50,
        );

  //Todo=>  Quran Live Page Content compass
  PageContent.compassQibla()
      : this(
          image: AppImages.onBoardingCompass,
          title: 'Quran Live Compass',
          subtitle: 'Find the Qibla direction with live compass.',
          bgColor: AppColors.kBlue,
        );
  //! Data Member.
  final String image;
  final String title;
  final String subtitle;
  final Color bgColor;
}
