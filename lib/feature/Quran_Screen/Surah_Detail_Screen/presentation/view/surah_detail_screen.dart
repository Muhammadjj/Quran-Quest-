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
      backgroundColor: AppColors.kBlack,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;
            final width = constraints.maxWidth;
            return CustomScrollView(
              slivers: [
                SliverAppBarSurahDetailWidget(widget: widget),
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
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (state is QuranSurahDetailLoadedState) {
          log('Loaded State: ${state.detailModel}');
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return SurahDetailHeader(
                    detailModel: state.detailModel,
                    height: height,
                    width: width,
                  );
                } else {
                  final ayahIndex = index - 1;
                  if (ayahIndex < state.detailModel.data.ayahs.length) {
                    return Container(
                      height: height * 0.2,
                      width: width * 0.8,
                      color: AppColors.grey,
                    ).paddingAll(8);
                  } else {
                    return const SizedBox.shrink();
                  }
                }
              },
              childCount: state.detailModel.data.ayahs.length + 1,
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
