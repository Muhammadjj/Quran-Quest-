part of '../widget.dart';

class SurahCardWidget extends StatelessWidget {
  const SurahCardWidget({
    required this.numberOfSurah,
    required this.surahNameArabic,
    required this.surahNameEnglish,
    required this.verseCount,
    required this.height,
    required this.width,
    required this.onTap,
    super.key,
  });

  final int numberOfSurah;
  final String surahNameArabic;
  final String surahNameEnglish;
  final int verseCount;
  final double height;
  final double width;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * 0.15,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.kDimGray,
        ),
        child: <Widget>[
          _buildSurahNumber(),
          _buildSurahNameArabic(context),
          SizedBox(width: width * 0.08),
          _buildSurahDetails(context: context),
          const Spacer(),
          _buildFavoriteIcon(),
        ].addRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ).paddingTop(10.h).paddingHorizontal(10.w),
    );
  }

  Widget _buildSurahNumber() {
    return Expanded(
      flex: 1,
      child: AutoSizeText(
        numberOfSurah.toString(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: AppColors.kWhite,
          fontSize: 15.sp,
        ),
      ),
    );
  }

  Widget _buildSurahNameArabic(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SizedBox(
        height: height * 0.15,
        child: Align(
          alignment: Alignment.center,
          child: AutoSizeText(
            surahNameArabic,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 30.sp,
                  fontFamily: 'MeQuran',
                  fontWeight: FontWeight.bold,
                  color: AppColors.quranTextColor,
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildSurahDetails({required BuildContext context}) {
    return Expanded(
      flex: 4,
      child: <Widget>[
        AutoSizeText(
          surahNameEnglish,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.kWhite, fontSize: 15.sp),
        ),
        const SizedBox(height: 5),
        AutoSizeText(
          'Verses: $verseCount',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.kWhite, fontSize: 15.sp),
        ),
      ].addColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  Widget _buildFavoriteIcon() {
    return Icons.favorite_border.toCustomIcon(color: AppColors.kWhite);
  }
}
