// ignore_for_file: flutter_style_todos

import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/quran_allah_name_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/bloc/random_ayah_bloc.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/Dashboard_Widgets/dashboard_drawer.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/Dashboard_Widgets/dashboard_verses_card_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  //* Global Key for Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late QuranAllahNameModel quranAllahNameModel;

  @override
  void initState() {
    super.initState();
    // * Fetch Random Ayah Event on Init State of Screen to get Random Ayah
    context.read<RandomAyahBloc>().add(FetchRandomAyahEvent());
    randomAllahName();
  }

  void randomAllahName() {
    var index = Random().nextInt(allNameModel.length);
    setState(() {
      // * Update Allah Name Model
      quranAllahNameModel = allNameModel[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 48, 48, 48),
      drawer: const DashBoardDrawerWidget(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return SingleChildScrollView(
            child: Column(
              children: [
                _buildAppBarSection(width, height),
                _buildVersesCardSection(width, height),
                SizedBox(height: 20.h),
                Container(
                  height: height * 0.2,
                  width: width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.kDimGray,
                  ),
                  child: Row(
                    children: [
                      //! Left Side - Image Full Height
                      Expanded(
                        flex: 3, //* 30% width
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.r),
                                topLeft: Radius.circular(12.r),
                              ),
                              child: Image.asset(
                                AppImages.cardPaperImage,
                                fit: BoxFit.fill,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                            //! Image ke upar Name Center me
                            Positioned(
                              child: AutoSizeText(
                                quranAllahNameModel.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: AppColors.kWhite,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //! Right Side - Column Centered
                      Expanded(
                        flex: 7, //* 70% width
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AutoSizeText(
                                quranAllahNameModel.transliteration,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: 16.sp,
                                      color: AppColors.kWhite,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              AutoSizeText(
                                quranAllahNameModel.meaning,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: 16.sp,
                                      color: AppColors.kWhite,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              AutoSizeText(
                                quranAllahNameModel.number.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: 16.sp,
                                      color: AppColors.kWhite,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          );
        },
      ),
    );
  }

  //! Method to build AppBar Section
  Widget _buildAppBarSection(double width, double height) {
    return SizedBox(
      height: width < 600 ? 0.3.sh : 0.4.sh,
      width: double.infinity,
      child: Stack(
        children: [
          <Widget>[
            AppBar(
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.transparent,
              title: const AutoSizeText(
                'القرآن الكريم',
                style: TextStyle(
                  fontFamily: 'MeQuran',
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                hoverColor: AppColors.softGold,
                icon: Icons.menu.toCustomIcon(),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
          ].addColumn(),
          // * Quran Image
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppImages.mosqueBGRemover,
              fit: BoxFit.contain,
              width: double.infinity,
              height: height < 600 ? 130.h : 180.h,
            ),
          ),
        ],
      ),
    ).withQuranGoldenGradient();
  }

  //! Method to build Verses Card Section
  // Widget _buildVersesCardSection(double width, double height) {
  //   return BlocBuilder<RandomAyahBloc, RandomAyahState>(
  //     builder: (context, state) {
  //       if (state is RandomAyahLoading) {
  //         return QuranLoadingWidget(height: height, width: width);
  //       } else if (state is RandomAyahLoadedState) {
  //         final randomAyahState = state.randomAyah;
  //         return QuranVerseCard(
  //           height: height,
  //           width: width,
  //           verseArabic:
  //               randomAyahState.text ?? 'فَإِنَّ مَعَ الْعُسْرِ يُسْرًا',
  //           surahName:
  //               randomAyahState.surah?.englishName ?? 'Surah Al-Inshirah',
  //           verseNumber: randomAyahState.numberInSurah ?? 6,
  //           juz: randomAyahState.juz ?? 30,
  //           manzil: randomAyahState.manzil ?? 7,
  //         );
  //       } else if (state is RandomAyahError) {
  //         return Center(
  //           child: AutoSizeText(state.error.message),
  //         );
  //       } else {
  //         return const Center(child: AutoSizeText('Error'));
  //       }
  //     },
  //   );
  // }

  Widget _buildVersesCardSection(double width, double height) {
    return BlocSelector<RandomAyahBloc, RandomAyahState, RandomAyah?>(
      selector: (state) {
        if (state is RandomAyahLoadedState) {
          return state.randomAyah;
        }
        return null;
      },
      builder: (context, randomAyahState) {
        if (randomAyahState == null) {
          return QuranLoadingWidget(height: height, width: width);
        }

        return QuranVerseCard(
          height: height,
          width: width,
          verseArabic: randomAyahState.text ?? 'فَإِنَّ مَعَ الْعُسْرِ يُسْرًا',
          surahName: randomAyahState.surah?.englishName ?? 'Surah Al-Inshirah',
          verseNumber: randomAyahState.numberInSurah ?? 6,
          juz: randomAyahState.juz ?? 30,
          manzil: randomAyahState.manzil ?? 7,
        );
      },
    );
  }
}
