// ignore_for_file: inference_failure_on_function_return_type, prefer_int_literals

part of '../widget.dart';

class CustomMasonryGridView extends StatelessWidget {
  const CustomMasonryGridView({
    required this.isButtonPressed,
    required this.onTap,
    super.key,
  });

  final bool isButtonPressed;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 5,
        bottom: 130,
      ),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 5,
      physics:
          const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
      itemBuilder: (context, index) {
        final heightOfContainer = _getContainerHeight(index);
        return Container(
          margin: const EdgeInsets.only(left: 10),
          height: heightOfContainer,
          width: context.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.kDimGray,
            boxShadow: [
              BoxShadow(
                color: AppColors.kBlack.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
              BoxShadow(
                color: AppColors.kBlack.withOpacity(0.2),
                spreadRadius: 0.5,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: isButtonPressed ? null : () => onTap(index),
            child: GridItemUiDesign(index: index),
          ),
        );
      },
    ).paddingRight(5).paddingLeft(0);
  }

  //! Method to get the height of the container based on the index
  double _getContainerHeight(int index) {
    switch (index % 5) {
      case 0:
      case 3:
        return 150.0;
      case 1:
      case 2:
      case 4:
        return 250.0;
      default:
        return 150.0;
    }
  }
}

class GridItemUiDesign extends StatelessWidget {
  const GridItemUiDesign({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return _buildGridItem(
      image: _getImagePath(index),
      title: _getTitle(index),
      context: context,
    );
  }

  //! Method to get the image path based on the index
  Widget _getImagePath(int index) {
    switch (index) {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        return SvgPicture.asset(
          AppImages.quranIconSVG,
          colorFilter: ColorFilter.mode(
            AppColors.kWhite,
            BlendMode.srcIn,
          ),
          height: 50,
          width: 50,
        );
      default:
        return SvgPicture.asset(
          AppImages.quranIconSVG,
          height: 70,
          width: 70,
          // fit: BoxFit.contain,
        );
    }
  }

  //! Method to get the title based on the index
  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Al_Quran';
      case 1:
        return 'Surah Yaseen';
      case 2:
        return 'Surah Rahman';
      case 3:
        return 'Surah Waqia';
      case 4:
        return 'Surah Kosar';
      default:
        return 'Surah Al_Nas';
    }
  }

  Widget _buildGridItem({
    required BuildContext context,
    // required String imagePath,
    required String title,
    required Widget image,
  }) {
    return Stack(
      children: [
        //! Bottom Right Corner Image (Half Inside, Half Outside)
        Positioned(
          right: -20.w,
          bottom: -10.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14.r),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                AppColors.kGrey.withOpacity(0.15),
                BlendMode.modulate,
              ),
              child: Image.asset(
                AppImages.quranGridShade,
                width: 80.sp,
                height: 80.sp,
              ),
            ),
          ),
        ),
        //! Center Image
        Align(
          child: Image.asset(
            AppImages.quranGridStar,
            width: 150.sp,
            height: 100.sp,
            fit: BoxFit.fill,
          ),
        ),
        //! Center Content (Icon & Text)
        Align(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: image,
              ),
              SizedBox(height: 8.h),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
