part of '../widgets.dart';

class IslamicFlashCard extends StatelessWidget {
  const IslamicFlashCard({
    required this.height,
    required this.width,
    super.key,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationHelper.push(
          MaterialPageRoute(builder: (_) => const FlashCardMainScreen()),
        );
      },
      child: Card(
        margin: EdgeInsets.all(16.r),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            <Widget>[
              Icons.lightbulb_circle_sharp
                  .toCustomIcon(color: AppColors.kGreen, size: 30.sp),
              const SizedBox(width: 6),
              AutoSizeText(
                'Flashes',
                maxLines: 1,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ].addRow().paddingAll(8.r),
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/flash_card_images/flash_card1.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(1.r),
              ),
              child: <Widget>[
                AutoSizeText(
                  'ثُمَّ مَآ أَدْرَىٰكَ مَا يَوْمُ ٱلدِّي',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamilyName.meQuran,
                      ),
                ),
                SizedBox(height: height * 0.02),
                AutoSizeText(
                  'پھر تمہیں کیا معلوم کہ جزا کا دن کیا ہے',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontFamilyName.notoNastaliqUrdu,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: height * 0.02),
                AutoSizeText(
                  '[ 82:18سورۃ الانفطار ]',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamilyName.meQuran,
                      ),
                ),
                const Spacer(),
              ]
                  .addColumn(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  )
                  .paddingAll(20.r)
                  .paddingTop(10),
            ),
            <Widget>[
              Icons.share.toCustomIcon(
                color: AppColors.kGreen,
                size: 30.sp,
              ),
              SizedBox(width: width * 0.04),
              Icons.copy.toCustomIcon(
                color: AppColors.kGreen,
                size: 30.sp,
              ),
            ].addRow().paddingAll(8.r),
          ],
        ),
      ),
    );
  }
}
