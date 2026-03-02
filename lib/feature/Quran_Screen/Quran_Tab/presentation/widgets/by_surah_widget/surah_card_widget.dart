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
    required this.favoriteButton,
    required this.isFavorite,
    super.key,
  });

  final int numberOfSurah;
  final String surahNameArabic;
  final String surahNameEnglish;
  final int verseCount;
  final double height;
  final double width;
  final void Function()? onTap;
  final void Function()? favoriteButton;
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 8,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        color: AppColors.kGrey,
        child: Container(
          height: height * 0.15,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Theme.of(context).colorScheme.surface,

            //  Theme.of(context).brightness == Brightness.dark
            //     ? AppColors.kDimGray
            //     : AppColors.kWhite,
          ),
          child: <Widget>[
            _buildSurahNumber(context: context),
            _buildSurahNameArabic(context),
            SizedBox(width: width * 0.08),
            _buildSurahDetails(context: context),
            const Spacer(),
            _buildFavoriteIcon(
              context: context,
              favoriteButton: favoriteButton,
              favorite: isFavorite,
            ),
          ].addRow(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ).paddingTop(10.h).paddingHorizontal(10.w),
    );
  }

  Widget _buildSurahNumber({required BuildContext context}) {
    return Expanded(
      flex: 1,
      child: AutoSizeText(
        numberOfSurah.toString(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.kWhite
                  : AppColors.kBlack,
              fontFamily: FontFamilyName.notoNastaliqUrdu,
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
                  fontFamily: FontFamilyName.meQuran,
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
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.kWhite
                    : AppColors.kBlack,
                fontFamily: FontFamilyName.notoNastaliqUrdu,
                fontSize: 15.sp,
              ),
        ),
        const SizedBox(height: 5),
        AutoSizeText(
          'Verses: $verseCount',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.kWhite
                    : AppColors.kBlack,
                fontFamily: FontFamilyName.notoNastaliqUrdu,
                fontSize: 15.sp,
              ),
        ),
      ].addColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  Widget _buildFavoriteIcon({
    required BuildContext context,
    required bool favorite,
    void Function()? favoriteButton,
  }) {
    return IconButton(
      onPressed: favoriteButton,
      splashColor: AppColors.primaryGreen.withOpacity(0.6),
      icon: isFavorite
          ? Icons.favorite.toCustomIcon(
              color: isFavorite
                  ? AppColors.kRedColor
                  : Theme.of(context).brightness == Brightness.dark
                      ? AppColors.kWhite
                      : AppColors.kBlack,
            )
          : Icons.favorite_border.toCustomIcon(
              color: isFavorite
                  ? AppColors.kRedColor
                  : Theme.of(context).brightness == Brightness.dark
                      ? AppColors.kWhite
                      : AppColors.kBlack,
            ),
    );
  }
}
