part of '../widget.dart';

class MoreOptionOpenDialog extends StatelessWidget {
  MoreOptionOpenDialog({super.key});

  final List<Map<String, dynamic>> _options = [
    {'icon': Icons.bookmark, 'text': 'BookMark'},
    {'icon': Icons.details, 'text': 'Details'},
    {'icon': Icons.play_arrow, 'text': 'Play'},
    {'icon': Icons.share, 'text': 'Share'},
    {'icon': Icons.copy, 'text': 'Copy'},
    {'icon': Icons.download, 'text': 'Download'},
    {'icon': Icons.settings, 'text': 'Settings'},
    {'icon': Icons.info, 'text': 'Info'},
    {'icon': Icons.star, 'text': 'Rate Us'},
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDarkMode ? AppColors.kWhite : AppColors.kBlack;

    return PopScope(
      onPopInvoked: (didPop) {
        if (didPop) {}
      },
      canPop: false,
      child: AlertDialog(
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        elevation: 0,
        content: SizedBox(
          width: 350.w,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            padding: EdgeInsets.all(10.sp),
            child: <Widget>[
              _buildHeader(context, textColor),
              SizedBox(height: 10.h),
              _buildOptionsGrid(textColor),
            ].addColumn(
              mainAxisSize: MainAxisSize.min,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, Color textColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Center(
            child: AutoSizeText(
              'Option',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 22.sp,
                    fontFamily: FontFamilyName.amiriQuran,
                    color: textColor,
                  ),
            ),
          ),
        ),
        IconButton(
          iconSize: 20.sp,
          color: textColor,
          splashColor: AppColors.kTransparent,
          onPressed: NavigationHelper.goBack,
          icon: Icon(
            Icons.close,
            size: 20.sp,
          ).paddingAll(8.sp),
        ),
      ],
    );
  }

  Widget _buildOptionsGrid(Color textColor) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: _options.map((option) {
        return _buildOptionItem(
          icon: option['icon'] as IconData,
          text: option['text'] as String,
          textColor: textColor,
        );
      }).toList(),
    );
  }

  Widget _buildOptionItem({
    required IconData icon,
    required String text,
    required Color textColor,
  }) {
    return <Widget>[
      Icon(icon, color: textColor, size: 24.sp),
      SizedBox(height: 4.h),
      Text(
        text,
        style: TextStyle(
          fontSize: 10.sp,
          color: textColor,
        ),
      ),
    ]
        .addColumn(
          mainAxisSize: MainAxisSize.min,
        )
        .paddingHorizontal(
          10.w,
        )
        .paddingVertical(10.h);
  }
}
