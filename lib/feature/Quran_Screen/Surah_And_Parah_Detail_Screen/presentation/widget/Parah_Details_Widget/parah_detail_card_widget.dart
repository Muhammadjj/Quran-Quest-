part of '../widget.dart';

class ParahDetailCardWidget extends StatelessWidget {
  const ParahDetailCardWidget({
    required this.height,
    required this.width,
    required this.number,
    required this.textOfArabic,
    required this.ruku,
    required this.manzil,
    required this.juz,
    super.key,
  });

  final String number;
  final String textOfArabic;
  final String ruku;
  final String manzil;
  final String juz;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).brightness == Brightness.dark
        ? AppColors.kWhite
        : AppColors.kWhite;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.kDimGray
          : AppColors.kWhite,
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ! PopUp Menu Button
          PopoverMenuWidget(
            text: 'Detail',
            menuItems: [
              PopupMenuItem<String>(
                child: Text(
                  'Number : $number',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: textTheme,
                        fontSize: 15,
                        fontFamily: FontFamilyName.amiriQuran,
                      ),
                ),
              ),
              PopupMenuItem<String>(
                child: Text(
                  'Ruku : $ruku',
                  style: TextStyle(
                    color: textTheme,
                    fontSize: 15,
                    fontFamily: FontFamilyName.amiriQuran,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                child: Text(
                  'Juz : $juz',
                  style: TextStyle(
                    color: textTheme,
                    fontSize: 15,
                    fontFamily: FontFamilyName.amiriQuran,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                child: Text(
                  'Manzil : $manzil',
                  style: TextStyle(
                    color: textTheme,
                    fontSize: 15,
                    fontFamily: FontFamilyName.amiriQuran,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          //! Arabic Text (Right Aligned)
          Align(
            alignment: Alignment.centerRight,
            child: AutoSizeText(
              textOfArabic,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 25.sp,
                    fontFamily: FontFamilyName.meQuran,
                    // color: AppColors.kWhite,
                    height: 2,
                  ),
              minFontSize: 16,
              textAlign: TextAlign.end,
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ).paddingAll(16.sp),
    ).paddingHorizontal(12.w).paddingVertical(8.h);
  }
}
