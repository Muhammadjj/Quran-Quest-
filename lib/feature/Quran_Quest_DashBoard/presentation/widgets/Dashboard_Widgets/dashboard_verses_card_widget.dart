import 'package:quran_quest/export/export.dart';

class QuranVerseCard extends StatelessWidget {
  const QuranVerseCard({
    required this.verseArabic,
    required this.surahName,
    required this.verseNumber,
    required this.height,
    required this.width,
    required this.juz,
    required this.manzil,
    super.key,
  });

  final String verseArabic;
  final String surahName;
  final int verseNumber;
  final int juz;
  final int manzil;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
      // height: height,
      width: width * 0.9,
      padding: EdgeInsets.all(12.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 18.h),
          <Widget>[
            Flexible(child: _buildArabicVerse(context: context)),
          ].addRow(
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ],
      ),
    ).withQuranGoldenGradient(
      borderRadius: BorderRadius.circular(12.r),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 8,
          offset: Offset(2, 4),
        ),
      ],
    ).paddingAll(12.sp);
  }

  //! Method to build Header
  Row _buildHeader() {
    return <Widget>[
      <Widget>[
        AutoSizeText(
          'Verses',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        AutoSizeText(
          'Quran Quest',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        AutoSizeText(
          '$surahName [$juz : $manzil]',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
      ].addColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      // ! Icon Buttons
      IconButton(
        onPressed: () {},
        icon: Icons.share.toCustomIcon(),
      ),
    ].addRow(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  //! Method to build Arabic Verse
  AutoSizeText _buildArabicVerse({required BuildContext context}) {
    return AutoSizeText(
      verseArabic,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
