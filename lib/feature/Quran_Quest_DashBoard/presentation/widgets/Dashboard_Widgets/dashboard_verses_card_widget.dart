part of '../widgets.dart';

class QuranVerseCard extends StatelessWidget {
  const QuranVerseCard({
    required this.randomAyah,
    required this.height,
    required this.width,
    super.key,
  });

  final RandomAyah randomAyah;
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
          _buildHeader(context: context),
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
          offset: const Offset(2, 4),
        ),
      ],
    ).paddingAll(12.sp);
  }

  //! Method to build Header
  Row _buildHeader({required BuildContext context}) {
    return <Widget>[
      <Widget>[
        AutoSizeText(
          'Verses',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                // color: AppColors.kBlack,
              ),
        ),
        AutoSizeText(
          'Quran Quest',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.emeraldGreen
                    : AppColors.kBlack,
              ),
        ),
        AutoSizeText(
          '${randomAyah.surah?.englishName ?? 'Surah Al-Inshirah'} \t\t[${randomAyah.juz ?? 30} : ${randomAyah.manzil ?? 7}]',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                // color: AppColors.kBlack,
              ),
        ),
      ].addColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      // ! Icon Buttons
      IconButton(
        onPressed: () {},
        icon: Icons.share.toCustomIcon(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.kWhite
              : AppColors.kBlack,
        ),
      ),
    ].addRow(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  //! Method to build Arabic Verse
  AutoSizeText _buildArabicVerse({required BuildContext context}) {
    return AutoSizeText(
      randomAyah.text ?? 'فَإِنَّ مَعَ الْعُسْرِ يُسْرًا',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontFamily: FontFamilyName.meQuran,
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),

      //  TextStyle(
      // ),
    );
  }
}
