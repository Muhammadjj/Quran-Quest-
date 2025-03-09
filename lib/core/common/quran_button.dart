part of 'common.dart';

class QuranButton extends StatelessWidget {
  const QuranButton({
    required this.text,
    required this.onPressed,
    super.key,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      height: 40.h,
      child: Material(
        borderRadius: BorderRadius.circular(25.r),
        elevation: 16,
        shadowColor: AppColors.kGrey,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.r),
            ),
            backgroundColor:
                Colors.transparent, // Gradient requires transparent background
            shadowColor: Colors.black.withOpacity(0.3),
            elevation: 5,
          ).copyWith(
            foregroundColor: WidgetStateProperty.all(Colors.white),
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return const Color(0xFF205C40); // Darker shade on press
              }
              return null;
            }),
          ),
          child: Ink(
            child: Center(
              child: AutoSizeText(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ).withQuranGoldenGradient(borderRadius: BorderRadius.circular(25.r)),
        ),
      ),
    );
  }
}
