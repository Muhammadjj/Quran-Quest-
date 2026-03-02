part of 'common.dart';

class QuranLoadingWidget extends StatelessWidget {
  const QuranLoadingWidget({
    required this.height,
    required this.width,
    super.key,
  });
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.4,
      width: width,
      child: const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: AppColors.deepGreen,
        ),
      ),
    )
        .withQuranGoldenGradient(
          borderRadius: BorderRadius.circular(12.r),
        )
        .paddingAll(12.sp);
  }
}
