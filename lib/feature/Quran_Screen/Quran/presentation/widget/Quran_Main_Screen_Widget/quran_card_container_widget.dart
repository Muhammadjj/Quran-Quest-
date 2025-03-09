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
        color: AppColors.kDimGray,
        border: Border.all(color: AppColors.softGold, width: 1.5),
      ),
      child: Row(
        children: [
          _buildLeftSideImage(),
          _buildRightSideImage(),
        ],
      ),
    ).paddingAll(12.sp);
  }

  //! Method to build Left Side Image with Stack
  Widget _buildLeftSideImage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14.r),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.grey.shade600.withOpacity(0.6), // Grey Tint
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
              style: TextStyle(
                fontFamily: 'MeQuran',
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.h), // Space between text & button
            QuranButton(
              text: 'Read Quran',
              onPressed: () {
                // Button Click Action
              },
            ),
          ]
              .addColumn(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text & button left
              )
              .paddingRight(60.w)
              .paddingTop(20.h),
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
