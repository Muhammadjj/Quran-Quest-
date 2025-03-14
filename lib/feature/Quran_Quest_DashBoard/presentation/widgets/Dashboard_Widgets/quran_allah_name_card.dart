part of '../widgets.dart';

class QuranAllahNameCard extends StatelessWidget {
  const QuranAllahNameCard({
    required this.height,
    required this.width,
    required this.quranAllahNameModel,
    super.key,
  });

  final double height;
  final double width;
  final QuranAllahNameModel quranAllahNameModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigationHelper.pushNamed(RoutesName.allahNameCardSwiper),
      child: Container(
        height: height * 0.2,
        width: width * 0.94,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.kDimGray,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: <Widget>[
          //! Left Side - Image Full Height
          Expanded(
            flex: 3, //* 30% width
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.r),
                    topLeft: Radius.circular(12.r),
                  ),
                  child: Image.asset(
                    AppImages.cardPaperImage,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                //! Image ke upar Name Center me
                Positioned(
                  child: AutoSizeText(
                    quranAllahNameModel.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.kWhite,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MeQuran',
                        ),
                  ),
                ),
              ],
            ),
          ),

          //! Right Side - Column Centered
          Expanded(
            flex: 7, //* 70% width
            child: Center(
              child: <Widget>[
                Text(
                  quranAllahNameModel.transliteration,
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                AutoSizeText(
                  quranAllahNameModel.meaning,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 15.sp,
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                AutoSizeText(
                  quranAllahNameModel.number.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ].addColumn(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
          ),
        ].addRow(),
      ),
    );
  }
}
