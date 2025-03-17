part of 'widget.dart';

class SurahDetailHeader extends StatelessWidget {
  const SurahDetailHeader({
    required this.detailModel,
    required this.height,
    required this.width,
    super.key,
  });

  final SurahDetailModel detailModel;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width * 0.05),
      margin: EdgeInsets.all(width * 0.05),
      decoration: BoxDecoration(
        color: AppColors.kGreen700,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Surah name and icon row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Surah name
              Expanded(
                flex: 6,
                child: AutoSizeText(
                  detailModel.data.name,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontFamily: 'MeQuran',
                        fontSize: width * 0.1,
                        color: AppColors.kWhite,
                      ),
                ),
              ),
              SizedBox(width: width * 0.05),
              // Vertical Divider
              Flexible(
                flex: 2,
                child: Container(
                  width: width * 0.001,
                  height: height * 0.1,
                  color: AppColors.kWhite,
                ),
              ),
              const SizedBox(width: 10),
              // Surah icon and Ayat count
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Surah icon
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: AppColors.kWhite,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.deepGreen,
                      child: ClipOval(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: detailModel.data.revelationType == 'Meccan'
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
                  // Ayat count
                  AutoSizeText(
                    'Ayaat : ${detailModel.data.numberOfAyahs}',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kWhite,
                        ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Divider(color: AppColors.kWhite),
          SizedBox(height: height * 0.01),
          // Bismillah text in Urdu
          AutoSizeText(
            'شروع کرتا ہوں اللہ تعالی کے نام سے\nجو بڑا مہربان نہایت رحم والا ہے۔',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 16,
                  fontFamily: 'MeQuran',
                  color: Colors.white,
                ),
          ),
          SizedBox(height: height * 0.01),
          // Bismillah text in Arabic
          Align(
            alignment: Alignment.centerRight,
            child: AutoSizeText(
              'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontFamily: 'MeQuran',
                    fontSize: width * 0.06,
                    letterSpacing: 0.001,
                    height: height * 0.003,
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
