part of 'widget.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    required this.pageContent,
    required this.height,
    required this.width,
    super.key,
  });
  final PageContent pageContent;
  final double height;
  final double width;

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Container(
        height: widget.height * 0.6,
        width: double.infinity,
        color: AppColors.kCharcoalGray,
        child: Image.asset(
          widget.pageContent.image, // * Display the image
        ),
      ),
      SizedBox(
        height: widget.height * .04.h,
      ),
      AutoSizeText(
        presetFontSizes: [
          34.sp,
          30.sp,
          28.sp,
        ],
        widget.pageContent.title, // * Display the title
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontFamily: 'CfSnowball',
          color: AppColors.kWhite,
        ),
      ),
      SizedBox(
        height: widget.height * 0.01,
      ),
      AutoSizeText(
        widget.pageContent.subtitle, // * Display the subtitle
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.kWhite,
          fontFamily: 'VarelaRound',
        ),
      ),
      SizedBox(
        height: widget.height * .05,
      ),
    ]
        .addColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
        )
        .paddingHorizontal(48.sp); // * Add padding to the column
  }
}
