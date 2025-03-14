part of '../widget.dart';

class SurahCardWidget extends StatelessWidget {
  const SurahCardWidget({
    required this.numberOfSurah,
    required this.surahNameArabic,
    required this.surahNameEnglish,
    required this.verseCount,
    required this.height,
    required this.width,
    super.key,
  });

  final int numberOfSurah;
  final String surahNameArabic;
  final String surahNameEnglish;
  final int verseCount;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        _buildSurahDetails(),
        const Spacer(),
        _buildFavoriteIcon(),
      ].addRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ).paddingTop(5).paddingHorizontal(10);
  }

  Widget _buildSurahNumber() {
    return Expanded(
      flex: 1,
      child: AutoSizeText(
        numberOfSurah.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
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
                  color: Colors.green,
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildSurahDetails() {
    return Expanded(
      flex: 4,
      child: <Widget>[
        AutoSizeText(
          surahNameEnglish,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 5),
        AutoSizeText(
          'Verses: $verseCount',
          style: TextStyle(
            color: AppColors.kGrey,
            fontSize: 14,
          ),
        ),
      ].addColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  Widget _buildFavoriteIcon() {
    return Icons.favorite_border.toCustomIcon(color: AppColors.white);
  }
}
