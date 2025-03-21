part of '../../widgets.dart';

class DashBoardDrawerFooterWidget extends StatelessWidget {
  const DashBoardDrawerFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.2,
      width: context.width,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.7), // Adjust opacity as needed
          BlendMode.srcATop, // This applies the black color effect
        ),
        child: Image.asset(
          AppImages.bgRemoveMosque,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high, // High-quality rendering
        ),
      ),
    );
  }
}
