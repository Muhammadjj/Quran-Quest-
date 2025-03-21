part of 'widget.dart';

class SliverAppBarSurahDetailWidget extends StatelessWidget {
  const SliverAppBarSurahDetailWidget({
    required this.widget,
    required this.width,
    super.key,
  });

  final QuranSurahDetailScreen widget;
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
        widget.nameOfSurah,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.kBlack,
              fontWeight: FontWeight.bold,
              fontFamily: 'MeQuran',
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
