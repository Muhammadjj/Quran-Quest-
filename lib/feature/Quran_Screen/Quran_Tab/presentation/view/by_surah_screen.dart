import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/bloc/quran_all_tabs_data_bloc.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/widgets/widget.dart';

/// 📌 Placeholder Screens
class BySurahScreen extends StatefulWidget {
  const BySurahScreen({super.key});

  @override
  State<BySurahScreen> createState() => _BySurahScreenState();
}

class _BySurahScreenState extends State<BySurahScreen> {
  @override
  void initState() {
    super.initState();
    context.read<QuranAllTabsDataBloc>().add(FetchQuranSurahDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          //
          body: BlocBuilder<QuranAllTabsDataBloc, QuranAllTabsDataState>(
            builder: (context, state) {
              if (state is QuranLoadingSurah) {
                return Center(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? AppColors.kGreen
                            : AppColors.kGreen,
                  ),
                );
              } else if (state is QuranLoadedSurah) {
                return ListView.builder(
                  itemCount: state.surahModel.data.length,
                  itemBuilder: (context, index) {
                    final surahData = state.surahModel.data[index];
                    return SurahCardWidget(
                      numberOfSurah: surahData.number,
                      surahNameArabic: surahData.name,
                      surahNameEnglish: surahData.englishName,
                      verseCount: surahData.numberOfAyahs,
                      height: height,
                      width: width,
                      onTap: () {
                        NavigationHelper.pushNamed(
                          RoutesName.quranSurahDetail,
                          arguments: {
                            'surahIndex': surahData.number,
                            'surahNameArabic': surahData.name,
                          },
                        );
                      },
                    );
                  },
                );
              } else if (state is QuranSurahErrorMessage) {
                return Center(child: Text(state.failure.toString()));
              } else {
                return const Center(child: AutoSizeText('No Surah Data'));
              }
            },
          ),
        );
      },
    );
  }
}
