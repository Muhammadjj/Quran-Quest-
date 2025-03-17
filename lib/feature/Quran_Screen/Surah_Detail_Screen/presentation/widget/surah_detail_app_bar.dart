part of 'widget.dart';

class SliverAppBarSurahDetailWidget extends StatelessWidget {
  const SliverAppBarSurahDetailWidget({
    required this.widget,
    super.key,
  });

  final QuranSurahDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      expandedHeight: 58,
      backgroundColor: Colors.transparent,
      title: AutoSizeText(
        widget.nameOfSurah,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.kBlack,
              fontWeight: FontWeight.bold,
              fontFamily: 'MeQuran',
            ),
      ),
      centerTitle: true,
      flexibleSpace: Container().withQuranGoldenGradient(),
    );
  }
}
