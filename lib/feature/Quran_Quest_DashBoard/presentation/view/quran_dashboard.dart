// ignore_for_file: flutter_style_todos

import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/model/random_card_surah_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/entities/quran_allah_name_model.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/bloc/random_ayah_bloc.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/widgets.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  //* Global Key for Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  QuranAllahNameModel? quranAllahNameModel;

  @override
  void initState() {
    super.initState();
    // * Fetch Random Ayah Event on Init State of Screen to get Random Ayah
    context.read<RandomAyahBloc>().add(FetchRandomAyahEvent());
    randomAllahName();
  }

  void randomAllahName() {
    final index = Random().nextInt(allahNameModel.length);
    setState(() {
      // * Update Allah Name Model
      quranAllahNameModel = allahNameModel[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: const DashBoardDrawerWidget(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return SingleChildScrollView(
            child: Column(
              children: [
                // ! AppBar Section
                _buildAppBarHomeSection(width, height),
                // ! Verses Card Section
                _buildVersesCardHomeSection(width, height),
                SizedBox(height: 15.h),
                // ! Allah Name Card Section
                QuranAllahNameCard(
                  height: height,
                  width: width,
                  quranAllahNameModel: quranAllahNameModel!,
                ),
                SizedBox(height: 10.h),
                // ! Quran Flashes Cards
                IslamicFlashCard(
                  height: height,
                  width: width,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     context.read<RandomAyahBloc>().add(
                //           const QuranFlashCardEvent(
                //             selectLanguage: 'ur.jalandhry',
                //           ),
                //         );
                //   },
                //   child: const Text('Flash Cards'),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }

  //! Method to build AppBar Section
  Widget _buildAppBarHomeSection(double width, double height) {
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
              title: AutoSizeText(
                'Home',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontFamily: FontFamilyName.amiriQuran,
                      color: AppColors.kBlack,
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
  Widget _buildVersesCardHomeSection(double width, double height) {
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
          randomAyah: randomAyahState,
        );
      },
    );
  }
}
