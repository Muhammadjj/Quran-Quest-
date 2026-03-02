part of '../widgets.dart';

class IslamicFlashCard extends StatefulWidget {
  const IslamicFlashCard({
    required this.height,
    required this.width,
    super.key,
  });
  final double height;
  final double width;

  @override
  State<IslamicFlashCard> createState() => _IslamicFlashCardState();
}

class _IslamicFlashCardState extends State<IslamicFlashCard> {
  final GlobalKey repaintCardKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Card(
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
          GestureDetector(
            onTap: () {
              NavigationHelper.pushNamed(RoutesName.quranFlashesCard);
            },
            child: RepaintBoundary(
              key: repaintCardKey,
              child: Container(
                width: widget.width,
                height: widget.height * 0.4,
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
                  SizedBox(height: widget.height * 0.02),
                  AutoSizeText(
                    'پھر تمہیں کیا معلوم کہ جزا کا دن کیا ہے',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamilyName.notoNastaliqUrdu,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: widget.height * 0.02),
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
            ),
          ),
          <Widget>[
            GestureDetector(
              onTap: () async {
                final path = await CaptureAndShareFile.instance
                    .captureAndShare(repaintKey: repaintCardKey);
                if (path.isNotEmpty) {
                  await Share.shareXFiles(
                    [XFile(path)],
                    subject: 'Quran Flash Card',
                    text: 'Check out this Quran Flash Card!',
                  );
                }
              },
              child: Icons.share.toCustomIcon(
                color: AppColors.kGreen,
                size: 25.sp,
              ),
            ),
            SizedBox(width: widget.width * 0.05),
            GestureDetector(
              onTap: () {
                NavigationHelper.pushNamed(RoutesName.quranFlashesCard);
              },
              child: Icons.copy.toCustomIcon(
                color: AppColors.kGreen,
                size: 25.sp,
              ),
            ),
          ].addRow().paddingAll(8.r),
        ],
      ),
    );
  }
}
