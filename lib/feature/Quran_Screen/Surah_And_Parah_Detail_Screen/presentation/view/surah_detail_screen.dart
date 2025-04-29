import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
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
  final playerAudio = AudioPlayer();
  bool isPlaying = false;
  int? currentlyPlayingAyah; // Track the currently playing Ayah

  @override
  void dispose() {
    playerAudio.dispose();
    super.dispose();
  }

  Future<void> _toggleAudio(String audioUrl, int ayahIndex) async {
    try {
      if (currentlyPlayingAyah != ayahIndex) {
        // Stop the previous audio if a different Ayah is playing
        await playerAudio.stop();
        await playerAudio.setAudioSource(
          AudioSource.uri(Uri.parse(audioUrl)),
          initialPosition: Duration.zero,
          preload: false,
        );
        setState(() {
          currentlyPlayingAyah = ayahIndex;
          isPlaying = true; // Set to playing state
        });
        await playerAudio.play();
      } else {
        // Pause or resume the current audio
        if (isPlaying) {
          await playerAudio.pause();
          setState(() {
            isPlaying = false; // Set to paused state
          });
        } else {
          await playerAudio.play();
          setState(() {
            isPlaying = true; // Set to playing state
          });
        }
      }
    } on Exception catch (e) {
      log('Audio Error: $e');
    }
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
                      playerAudioPress: () =>
                          _toggleAudio(ayah.audio, ayahIndex),
                      isPlaying: currentlyPlayingAyah == ayahIndex && isPlaying,
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
