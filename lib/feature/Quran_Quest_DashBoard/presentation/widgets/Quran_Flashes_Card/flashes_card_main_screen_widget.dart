part of '../widgets.dart';

class IslamicFlashCardWidget extends StatefulWidget {
  const IslamicFlashCardWidget({
    required this.height,
    required this.width,
    required this.arabicFlashesText,
    required this.urduFlashText,
    required this.juz,
    required this.manzil,
    super.key,
  });

  final double height;
  final double width;
  final String arabicFlashesText;
  final String urduFlashText;
  final String juz;
  final String manzil;

  @override
  State<IslamicFlashCardWidget> createState() => _IslamicFlashCardWidgetState();
}

class _IslamicFlashCardWidgetState extends State<IslamicFlashCardWidget> {
  final GlobalKey _repaintKey = GlobalKey();

  Future<void> _captureAndShare() async {
    try {
      final boundary = _repaintKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      if (boundary == null) return;

      final image = await boundary.toImage();
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData == null) return;

      final pngBytes = byteData.buffer.asUint8List();
      final dir = await getTemporaryDirectory();
      final path =
          '${dir.path}/card_${DateTime.now().millisecondsSinceEpoch}.png';
      await File(path).writeAsBytes(pngBytes);

      await Share.shareXFiles([XFile(path)]);
    } on Exception catch (e) {
      log('Error sharing: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGreen, width: 2),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          _FlashCardContent(
            repaintKey: _repaintKey,
            width: widget.width,
            height: widget.height,
            arabicFlashesText: widget.arabicFlashesText,
            urduFlashText: widget.urduFlashText,
            juz: widget.juz,
            manzil: widget.manzil,
          ),
          _ShareButton(
            onTap: _captureAndShare,
            width: widget.width,
          ),
        ],
      ),
    );
  }
}

class _FlashCardContent extends StatelessWidget {
  const _FlashCardContent({
    required this.repaintKey,
    required this.width,
    required this.height,
    required this.arabicFlashesText,
    required this.urduFlashText,
    required this.juz,
    required this.manzil,
  });

  final GlobalKey repaintKey;
  final double width;
  final double height;
  final String arabicFlashesText;
  final String urduFlashText;
  final String juz;
  final String manzil;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // NavigationHelper.pushNamed(RoutesName.quranFlashesCard);
      },
      child: RepaintBoundary(
        key: repaintKey,
        child: Container(
          width: width,
          height: height * 0.4,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image:
                  AssetImage('assets/images/flash_card_images/flash_card1.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: <Widget>[
            SizedBox(height: 40.h),
            Flexible(
              child: AutoSizeText(
                arabicFlashesText,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamilyName.meQuran,
                    ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Flexible(
              child: AutoSizeText(
                urduFlashText,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 16.sp,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamilyName.notoNastaliqUrdu,
                    ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Flexible(
              child: AutoSizeText(
                '[ $juz:$manzil الانفطار ]',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamilyName.notoNastaliqUrdu,
                    ),
              ),
            ),
            const Spacer(),
          ].addColumn(
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}

class _ShareButton extends StatelessWidget {
  const _ShareButton({
    required this.onTap,
    required this.width,
  });

  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: <Widget>[
        Icons.share.toCustomIcon(
          color: AppColors.kGreen,
          size: 20.sp,
        ),
        SizedBox(width: width * 0.05),
        AutoSizeText(
          'Share',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamilyName.notoNastaliqUrdu,
              ),
        ),
      ]
          .addRow(
            mainAxisAlignment: MainAxisAlignment.end,
          )
          .paddingAll(8.r)
          .paddingRight(5),
    );
  }
}
