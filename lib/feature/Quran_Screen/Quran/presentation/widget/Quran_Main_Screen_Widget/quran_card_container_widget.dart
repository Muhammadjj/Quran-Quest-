part of '../widget.dart';

//! Separate Class for Quran Section Container
class QuranSectionContainer extends StatelessWidget {
  const QuranSectionContainer({
    required this.width,
    required this.height,
    super.key,
  });
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.2,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.kDimGray
            : AppColors.kWhite,
        border: Border.all(
          color: AppColors.softGold,
          width: Theme.of(context).brightness == Brightness.dark ? 1.5 : 3,
        ),
      ),
      child: InkWell(
        onTap: () {
          //! Button Click Action
          NavigationHelper.pushNamed(RoutesName.quranMajidMultipleTabs);
        },
        child: Row(
          children: [
            _buildLeftSideImage(context: context),
            _buildRightSideImage(),
          ],
        ),
      ),
    ).paddingAll(12.sp);
  }

  //! Method to build Left Side Image with Stack
  Widget _buildLeftSideImage({required BuildContext context}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14.r),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Theme.of(context).brightness == Brightness.dark
                  ? AppColors.kGrey.withOpacity(0.6)
                  : AppColors.kGrey.withOpacity(0.1),
              BlendMode.modulate,
            ),
            child: Image.asset(
              AppImages.circleQuranFlower,
              fit: BoxFit.cover,
              height: 300,
              width: width * 0.6,
            ),
          ),
        ),
        //! Aligning Column to Left and Center Vertically
        Align(
          alignment: Alignment.centerLeft,
          child: <Widget>[
            AutoSizeText(
              "القرآن الكريم",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontFamily: FontFamilyName.meQuran,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
              //  TextStyle(
              // ),
            ),
            SizedBox(height: 15.h), // Space between text & button
            QuranButton(
              text: 'Read Quran',
              height: height * 0.03,
              width: width * 0.2,
              // onPressed: () {},
            ),
          ]
              .addColumn(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text & button left
              )
              .paddingRight(70.w)
              .paddingTop(30.h),
        ),
      ],
    );
  }

  //! Method to build Right Side Image
  Widget _buildRightSideImage() {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: Image.asset(
          AppImages.cuteBoyReadQuran,
          height: 110.h,
          width: 100.w,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
