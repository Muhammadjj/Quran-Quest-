part of 'common.dart';

class QuranButton extends StatelessWidget {
  const QuranButton({
    required this.text,
    // required this.onPressed,
    super.key,
    this.height = 40.0,
    this.width = 120.0,
  });
  final String text;
  // final VoidCallback onPressed;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Material(
        borderRadius: BorderRadius.circular(20.r),
        elevation: 16,
        shadowColor: AppColors.kGrey,
        child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 0.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            backgroundColor:
                Colors.transparent, //! Gradient requires transparent background
            shadowColor: Colors.black.withOpacity(0.3),
            elevation: 5,
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
          ).copyWith(
            foregroundColor: WidgetStateProperty.all(Colors.white),
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return const Color(0xFF205C40); //! Darker shade on press
              }
              return null;
            }),
          ),
          child: Ink(
            child: Center(
              child: AutoSizeText(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: 'AmiriQuran',
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ).paddingBottom(5),
            ),
          ).withQuranGoldenGradient(borderRadius: BorderRadius.circular(25.r)),
        ),
      ),
    );
  }
}
