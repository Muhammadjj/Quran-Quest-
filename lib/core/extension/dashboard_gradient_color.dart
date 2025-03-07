part of 'extension.dart';

extension QuranGradientExtension on Widget {
  // Widget withQuranGradient() {

  // ! Golden & Green Quranic Colors.
  Widget withQuranGoldenGradient({
    Border? border,
    BorderRadius? borderRadius,
    List<BoxShadow>? boxShadow,
    Color? color,
    DecorationImage? image,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: color == null
            ? const LinearGradient(
                colors: [
                  AppColors.softGold, //! Default Soft Gold
                  AppColors.deepGreen, //! Default Deep Green
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        color: color,
        border: border,
        borderRadius: shape == BoxShape.circle ? null : borderRadius,
        boxShadow: boxShadow,
        image: image,
        shape: shape,
      ),
      child: this,
    );
  }

  // ! ShadeMask Golden & Green Quranic Colors.
  Widget withQuranShadeMaskGradient() {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            AppColors.softGold, //! Soft Gold
            AppColors.deepGreen, //! Deep Green
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: this,
    );
  }
}
