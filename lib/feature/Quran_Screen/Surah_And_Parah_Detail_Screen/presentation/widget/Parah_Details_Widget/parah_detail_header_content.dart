part of '../widget.dart';

class ParahDetailHeader extends StatelessWidget {
  const ParahDetailHeader({
    required this.detailModel,
    required this.height,
    required this.width,
    super.key,
  });

  final QuranParahResponseModel detailModel;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width * 0.05),
      // margin: EdgeInsets.all(width * 0.05),
      decoration: BoxDecoration(
        color: AppColors.kGreen700,
        borderRadius: BorderRadius.circular(15),
      ),
      child: <Widget>[
        //! Surah name and icon row
        <Widget>[
          //! Surah name
          Expanded(
            flex: 6,
            child: AutoSizeText(
              detailModel.data!.ayahs![0].surah!.name.toString(),
              maxLines: 1,
              overflow: TextOverflow.fade,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontFamily: FontFamilyName.meQuran,
                    fontSize: width * 0.1,
                    color: AppColors.kWhite,
                  ),
            ),
          ),
          SizedBox(width: width * 0.05),
          //! Vertical Divider
          Flexible(
            flex: 2,
            child: Container(
              width: width * 0.001,
              height: height * 0.1,
              color: AppColors.kWhite,
            ),
          ),
          const SizedBox(width: 10),
          //! Surah icon and Ayat count
          <Widget>[
            //! Surah icon
            CircleAvatar(
              radius: 31,
              backgroundColor: AppColors.kWhite,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.deepGreen,
                child: ClipOval(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: detailModel.data!.ayahs![0].surah!.revelationType ==
                            'Meccan'
                        ? Image.asset(
                            AppImages.allahHome,
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                          )
                        : Image.asset(
                            AppImages.m_Madina,
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                          ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            //! Ayat count
            AutoSizeText(
              'Ayaat : ${detailModel.data!.ayahs![0].surah!.numberOfAyahs}',
              maxLines: 1,
              overflow: TextOverflow.fade,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kWhite,
                  ),
            ),
          ].addColumn(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ].addRow(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        SizedBox(height: height * 0.01),
        Divider(color: AppColors.kWhite),
        SizedBox(height: height * 0.01),
        <Widget>[
          //! Urdu text left side pr
          Flexible(
            flex: 6,
            child: Align(
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                'شروع کرتا ہوں اللہ تعالی کے نام سے\nجو بڑا مہربان نہایت رحم والا ہے۔',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 12.sp,
                      color: Colors.white,
                      fontFamily: FontFamilyName.notoNastaliqUrdu,
                    ),
                minFontSize: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ),

          SizedBox(width: 10.w),

          //! Arabic text right side pr
          Flexible(
            flex: 4,
            child: Align(
              alignment: Alignment.centerRight,
              child: AutoSizeText(
                'بِسْمِ ٱللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 18.sp,
                      fontFamily: FontFamilyName.notoNastaliqUrdu,
                      color: Colors.white,
                    ),
                minFontSize: 14,
                maxLines: 1,
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ].addRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ].addColumn(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    ).paddingAll(15);
  }
}
