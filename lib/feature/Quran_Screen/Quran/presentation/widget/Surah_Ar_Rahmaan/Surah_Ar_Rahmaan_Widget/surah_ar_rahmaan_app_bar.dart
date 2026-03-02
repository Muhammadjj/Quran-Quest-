part of '../../widget.dart';

class SliverAppBarSurahArRahmaanWidget extends StatelessWidget {
  const SliverAppBarSurahArRahmaanWidget({
    required this.width,
    super.key,
  });

  final double width;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      expandedHeight: 58,
      backgroundColor: Colors.transparent,
      leading: GestureDetector(
        onTap: NavigationHelper.goBack,
        child: Iconsax.arrow_left.toCustomIcon(),
      ),
      title: AutoSizeText(
        'سُورَةُ الرَّحۡمَٰن',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 25.sp,
              fontFamily: FontFamilyName.meQuran,
            ),
      ),
      centerTitle: true,
      actions: [
        Icons.settings.toCustomIcon(size: 25),
        SizedBox(
          width: width * 0.03,
        ),
      ],
      flexibleSpace: Container().withQuranGoldenGradient(),
    );
  }
}
