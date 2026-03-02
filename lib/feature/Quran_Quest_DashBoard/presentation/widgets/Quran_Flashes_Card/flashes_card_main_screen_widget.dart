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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.r),
      decoration: _buildCardDecoration(context),
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
            onTap: _handleShare,
            width: widget.width,
          ),
        ],
      ),
    );
  }

  ///! Builds the card decoration with a border and rounded corners.
  BoxDecoration _buildCardDecoration(BuildContext context) {
    return BoxDecoration(
      border: Border.all(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.kWhite
            : AppColors.deepGreen,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(16.r),
    );
  }

  Future<void> _handleShare() async {
    final path = await CaptureAndShareFile.instance
        .captureAndShare(repaintKey: _repaintKey);
    if (path.isNotEmpty) {
      await Share.shareXFiles(
        [XFile(path)],
        subject: 'Quran Flash Card',
        text: 'Check out this Quran Flash Card!',
      );
    } else {
      log('Error capturing and sharing the file.');
    }
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
      onTap: () => _navigateToFlashCardView(context),
      child: RepaintBoundary(
        key: repaintKey,
        child: Container(
          width: width,
          height: height * 0.4,
          decoration: _buildContentDecoration(),
          child: _buildContent(context),
        ),
      ),
    );
  }

  BoxDecoration _buildContentDecoration() {
    return BoxDecoration(
      image: const DecorationImage(
        image: AssetImage('assets/images/flash_card_images/flash_card1.jpg'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(15.r),
    );
  }

  Widget _buildContent(BuildContext context) {
    return <Widget>[
      SizedBox(height: 40.h),
      _buildText(
        context,
        arabicFlashesText,
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamilyName.meQuran,
        maxLines: 2,
      ),
      SizedBox(height: height * 0.02),
      _buildText(
        context,
        urduFlashText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamilyName.notoNastaliqUrdu,
        maxLines: 3,
        height: 1.5,
      ),
      SizedBox(height: height * 0.02),
      _buildText(
        context,
        '[ $juz:$manzil الانفطار ]',
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamilyName.notoNastaliqUrdu,
      ),
      const Spacer(),
    ].addColumn();
  }

  Widget _buildText(
    BuildContext context,
    String text, {
    required double fontSize,
    required FontWeight fontWeight,
    required String fontFamily,
    int maxLines = 1,
    double? height,
  }) {
    return Flexible(
      child: AutoSizeText(
        text,
        textAlign: TextAlign.center,
        maxLines: maxLines,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontFamily: fontFamily,
              height: height,
            ),
      ),
    );
  }

  Future<void> _navigateToFlashCardView(BuildContext context) async {
    final path = await CaptureAndShareFile.instance
        .captureAndShare(repaintKey: repaintKey);
    log('Image Location: $path');
    await NavigationHelper.push(
      MaterialPageRoute(
        builder: (context) => FlashCardViewCaptureImageScreen(
          imagePath: path,
          repaintKey: repaintKey,
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
        SizedBox(width: width * 0.02),
        AutoSizeText(
          'Share',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
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
