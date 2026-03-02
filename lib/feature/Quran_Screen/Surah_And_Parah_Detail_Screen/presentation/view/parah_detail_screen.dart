import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/presentation/bloc/quran_surah_detail_bloc.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/presentation/widget/widget.dart';

class ParahDetailMainScreen extends StatefulWidget {
  const ParahDetailMainScreen({
    required this.parahIndex,
    super.key,
  });
  final int parahIndex;

  @override
  State<ParahDetailMainScreen> createState() => _ParahDetailMainScreenState();
}

class _ParahDetailMainScreenState extends State<ParahDetailMainScreen> {
  late final AudioPlayerHandler _audioHandler;
  @override
  void initState() {
    super.initState();
    //! Fetching Parah details using the provided parahIndex
    context
        .read<QuranSurahDetailBloc>()
        .add(QuranParahDetailFetchIndexEvent(parahIndex: widget.parahIndex));
    log('Parah Detail Number : ${widget.parahIndex}');

    _audioHandler = AudioPlayerHandler();
  }

  @override
  void dispose() {
    _audioHandler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocBuilder<QuranSurahDetailBloc, QuranSurahDetailState>(
        builder: (context, state) {
          return SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final height = constraints.maxHeight;
                final width = constraints.maxWidth;
                return CustomScrollView(
                  slivers: [
                    if (state is QuranSurahDetailLoadingState) ...[
                      //! Displaying a loading indicator while data is being fetched
                      SliverFillRemaining(
                        child: Center(
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor:
                                Theme.of(context).brightness == Brightness.dark
                                    ? AppColors.kGreen
                                    : AppColors.kGreen,
                          ),
                        ),
                      ),
                    ] else if (state is QuranParahDetailLoadedState) ...[
                      //! Sliver AppBar for Parah Detail
                      SliverAppBarParahDetailWidget(
                        surahName: state
                            .quranParahResponseModel.data!.ayahs![0].surah!.name
                            .toString(),
                        width: width,
                      ),
                      //! Header section for Parah details
                      SliverToBoxAdapter(
                        child: ParahDetailHeader(
                          detailModel: state.quranParahResponseModel,
                          height: height,
                          width: width,
                        ),
                      ),
                      //! List of Ayahs in the Parah
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount:
                              state.quranParahResponseModel.data!.ayahs!.length,
                          (context, index) {
                            final ayah = state
                                .quranParahResponseModel.data!.ayahs![index];
                            return SurahDetailCardWidget(
                              number: ayah.number.toString(),
                              textOfArabic: ayah.text.toString(),
                              juz: ayah.juz.toString(),
                              manzil: ayah.manzil.toString(),
                              ruku: ayah.ruku.toString(),
                              numberOfSurah: ayah.surah!.number.toString(),
                              currentSurahNumber: ayah.number.toString(),
                              playerAudioPress: () {},
                              height: height,
                              width: width,
                            );
                          },
                        ),
                      ),
                    ] else if (state is QuranSurahDetailErrorMessage) ...[
                      //! Displaying an error message if data fetching fails
                      SliverFillRemaining(
                        child: Center(
                          child: AutoSizeText(state.failure.toString()),
                        ),
                      ),
                    ] else ...[
                      //! Displaying a fallback message if no data is available
                      const SliverFillRemaining(
                        child: Center(
                          child: AutoSizeText('No Data'),
                        ),
                      ),
                    ],
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
