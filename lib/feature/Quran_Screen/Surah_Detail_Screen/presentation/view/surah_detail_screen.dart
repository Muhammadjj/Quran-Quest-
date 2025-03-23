import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/presentation/bloc/quran_surah_detail_bloc.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_Detail_Screen/presentation/widget/widget.dart';

class QuranSurahDetailScreen extends StatefulWidget {
  const QuranSurahDetailScreen({
    required this.surahIndex,
    required this.nameOfSurah,
    super.key,
  });
  final int surahIndex;
  final String nameOfSurah;
  @override
  State<QuranSurahDetailScreen> createState() => _QuranSurahDetailScreenState();
}

class _QuranSurahDetailScreenState extends State<QuranSurahDetailScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<QuranSurahDetailBloc>().add(
          QuranSurahDetailFetchByIndexEvent(
            surahIndex: widget.surahIndex,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;
            final width = constraints.maxWidth;
            return CustomScrollView(
              slivers: [
                SliverAppBarSurahDetailWidget(widget: widget, width: width),
                SurahDetailContent(height: height, width: width),
              ],
            );
          },
        ),
      ),
    );
  }
}

class SurahDetailContent extends StatelessWidget {
  const SurahDetailContent({
    required this.height,
    required this.width,
    super.key,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranSurahDetailBloc, QuranSurahDetailState>(
      builder: (context, state) {
        if (state is QuranSurahDetailLoadingState) {
          return SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.kGreen
                    : AppColors.kGreen,
              ),
            ),
          );
        } else if (state is QuranSurahDetailLoadedState) {
          log('Loaded State: ${state.detailModel}');
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.detailModel.data.ayahs.length + 1,
              (context, index) {
                if (index == 0) {
                  return SurahDetailHeader(
                    detailModel: state.detailModel,
                    height: height,
                    width: width,
                  );
                } else {
                  final ayahIndex = index - 1;
                  if (ayahIndex >= 0 &&
                      ayahIndex < state.detailModel.data.ayahs.length) {
                    return SurahDetailCardWidget(
                      number: state.detailModel.data.ayahs[ayahIndex].number
                          .toString(),
                      textOfArabic:
                          state.detailModel.data.ayahs[ayahIndex].text,
                      juz: state.detailModel.data.ayahs[ayahIndex].juz
                          .toString(),
                      manzil: state.detailModel.data.ayahs[ayahIndex].manzil
                          .toString(),
                      ruku: state.detailModel.data.ayahs[ayahIndex].ruku
                          .toString(),
                      height: height,
                      width: width,
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }
              },
            ),
          );
        } else if (state is QuranSurahDetailErrorMessage) {
          return SliverFillRemaining(
            child: Center(
              child: AutoSizeText(state.failure.toString()),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: AutoSizeText('No Data'),
            ),
          );
        }
      },
    );
  }
}
