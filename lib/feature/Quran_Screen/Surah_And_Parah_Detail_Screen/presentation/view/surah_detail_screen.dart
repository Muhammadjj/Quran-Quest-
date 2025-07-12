import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/presentation/bloc/quran_surah_detail_bloc.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/presentation/widget/widget.dart';

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
  void initState() {
    super.initState();
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
                _SurahDetailContent(
                  height: height,
                  width: width,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SurahDetailContent extends StatefulWidget {
  const _SurahDetailContent({
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<_SurahDetailContent> createState() => _SurahDetailContentState();
}

class _SurahDetailContentState extends State<_SurahDetailContent> {
  late final AudioPlayerHandler _audioHandler;

  @override
  void initState() {
    super.initState();
    _audioHandler = AudioPlayerHandler();
  }

  @override
  void dispose() {
    _audioHandler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranSurahDetailBloc, QuranSurahDetailState>(
      builder: (context, state) {
        if (state is QuranSurahDetailLoadingState) {
          return SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: AppColors.kGreen,
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
                    height: widget.height,
                    width: widget.width,
                  );
                } else {
                  final ayahIndex = index - 1;
                  if (ayahIndex >= 0 &&
                      ayahIndex < state.detailModel.data.ayahs.length) {
                    final ayah = state.detailModel.data.ayahs[ayahIndex];
                    return SurahDetailCardWidget(
                      number: ayah.number.toString(),
                      textOfArabic: ayah.text,
                      juz: ayah.juz.toString(),
                      manzil: ayah.manzil.toString(),
                      ruku: ayah.ruku.toString(),
                      numberOfSurah: state.detailModel.data.number.toString(),
                      currentSurahNumber: ayah.number.toString(),
                      playerAudioPress: () => _audioHandler.toggleAudio(
                        ayah.audio,
                        ayahIndex,
                        setState,
                      ),
                      isPlaying:
                          _audioHandler.currentlyPlayingAyah == ayahIndex &&
                              _audioHandler.isPlaying,
                      height: widget.height,
                      width: widget.width,
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
