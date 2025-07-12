part of '../widget.dart';

class QuranSurahYaseenScreen extends StatefulWidget {
  const QuranSurahYaseenScreen({super.key});

  @override
  State<QuranSurahYaseenScreen> createState() => _QuranSurahYaseenScreenState();
}

class _QuranSurahYaseenScreenState extends State<QuranSurahYaseenScreen> {
  @override
  void initState() {
    super.initState();
    triggerSurahYaseenIndex();
  }

  void triggerSurahYaseenIndex() {
    //! Initialize any data or state here if needed
    context
        .read<QuranSurahDetailBloc>()
        .add(QuranSurahDetailFetchByIndexEvent(surahIndex: 36));
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
                SliverAppBarSurahYaseenWidget(
                  width: width,
                ),
                _SurahYaseenContent(
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

class _SurahYaseenContent extends StatefulWidget {
  const _SurahYaseenContent({required this.height, required this.width});
  final double height;
  final double width;

  @override
  State<_SurahYaseenContent> createState() => _SurahYaseenContentState();
}

class _SurahYaseenContentState extends State<_SurahYaseenContent> {
  late final AudioPlayerHandler _audioHandler;
  @override
  void initState() {
    super.initState();
    _audioHandler = AudioPlayerHandler();
  }

  @override
  void dispose() {
    super.dispose();
    _audioHandler.dispose();
  }

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
                    height: widget.height,
                    width: widget.width,
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
                      numberOfSurah: state.detailModel.data.number.toString(),
                      currentSurahNumber: state
                          .detailModel.data.ayahs[ayahIndex].number
                          .toString(),
                      playerAudioPress: () => _audioHandler.toggleAudio(
                        state.detailModel.data.ayahs[ayahIndex].audio,
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
