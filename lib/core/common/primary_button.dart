part of 'common.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.onTap,
    required this.text,
    this.height,
    this.width,
    this.borderRadius,
    this.isBorder = false,
    this.fontSize,
    this.color,
    super.key,
  });
  final VoidCallback onTap;
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? color;
  final bool isBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: height ?? 55,
        alignment: Alignment.center,
        width: width ?? double.maxFinite,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          border: isBorder ? Border.all(color: AppColors.primary) : null,
        ),
        child: AutoSizeText(
          text,
          style: const TextStyle(color: AppColors.primary),
        ),
      ),
    );
  }
}
