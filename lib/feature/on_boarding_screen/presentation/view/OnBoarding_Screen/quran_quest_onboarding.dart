import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/on_boarding_screen/domain/model/on_boarding_model.dart';
import 'package:quran_quest/feature/on_boarding_screen/presentation/widget/widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingQuranQuest extends StatefulWidget {
  const OnBoardingQuranQuest({super.key});

  @override
  State<OnBoardingQuranQuest> createState() => _OnBoardingQuranQuestState();
}

class _OnBoardingQuranQuestState extends State<OnBoardingQuranQuest> {
  final pageController = PageController();
  String buttonText = 'Next';

  @override
  void initState() {
    super.initState();
    pageController
        .addListener(_updateButtonText); // * Add listener to update button text
  }

  @override
  void dispose() {
    pageController
      ..removeListener(
        _updateButtonText,
      ) // * Remove listener to avoid memory leaks
      ..dispose();
    super.dispose();
  }

  void _updateButtonText() {
    setState(() {
      buttonText = (pageController.page == 2)
          ? 'Continue'
          : 'Next'; // * Update button text based on page index
    });
  }

  void nextPage() {
    if (pageController.hasClients) {
      if (pageController.page == 2) {
        // context.read<WeatherBloc>().add(
        //       CacheFirstTimerEvent(),
        //     ); // * Trigger event when reaching the last page
      } else {
        pageController.animateToPage(
          pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kCharcoalGray,
      body:

          //  BlocListener<WeatherBloc, WeatherState>(
          // listener: (context, state) {
          //   final prefs = DependenceManager.get<SharedPreferences>()
          //     ..setBool(kFirstTimerKey, true); //* Update shared preferences
          //   if (state is UserCached) {
          //     if (kDebugMode) {
          //       log('Local Store State: ${prefs.get(kFirstTimerKey)}');
          //     }
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute<dynamic>(
          //         builder: (context) => BlocBuilder<LocationBloc, LocationState>(
          //           builder: (context, state) {
          //             if (state is AskForLocationPermissionState) {
          //               return const WaitingPermissionWidget();
          //             } else if (state is LocationPermissionDeniedState) {
          //               return const PermissionDeniedWidget();
          //             } else if (state is LocationServiceDisabledState) {
          //               return const LocationServiceDisabledWidget();
          //             } else if (state is FetchCurrentLocationState) {
          //               return const LandingScreen();
          //             } else {
          //               return const Scaffold(
          //                 body: Center(
          //                   child: AutoSizeText('Dont worry again try 🗺️'),
          //                 ),
          //               );
          //             }
          //           },
          //         ),
          //       ),
          //     );
          //   }
          // },
          // child:
          LayoutBuilder(
        builder: (context, constraints) {
          final height = constraints.maxHeight;
          final width = constraints.maxWidth;
          return Stack(
            children: [
              _buildPageView(height, width), // * Build the PageView
              _buildPageIndicator(height), // * Build the Page Indicator
              _buildNextButton(
                height,
                width,
              ), // * Build the Next/Continue button
            ],
          );
        },
      ),
    );
  }

// * Build Page View
  Widget _buildPageView(double height, double width) {
    return PageView(
      controller: pageController,
      children: [
        OnBoardingBody(
          pageContent: PageContent.quran(),
          height: height,
          width: width,
        ),
        OnBoardingBody(
          pageContent: PageContent.allahNames(),
          height: height,
          width: width,
        ),
        OnBoardingBody(
          pageContent: PageContent.compassQibla(),
          height: height,
          width: width,
        ),
      ],
    );
  }

// * build Page Indicator
  Widget _buildPageIndicator(double height) {
    return Positioned(
      child: Container(
        margin: EdgeInsets.only(
          top: height * 0.61,
          left: height * 0.058,
        ),
        child: SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 7,
            dotWidth: 7,
            activeDotColor: AppColors.softGold,
            dotColor: AppColors.kWhite,
          ),
          onDotClicked: (index) {
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
    );
  }

  // * Build Next Button.
  Widget _buildNextButton(double height, double width) {
    return Positioned(
      bottom: height * 0.05,
      left: width * 0.05,
      right: width * 0.05,
      child: InkWell(
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        onTap: nextPage, // * Handle button tap to go to the next page

        borderRadius: BorderRadius.circular(30), // Ripple effect ke liye
        child: QuranOnBoardingButton(
          buttonText: buttonText,
          buttonHeight: height,
          buttonWidth: width,
        ),
      ),
    );
  }

  // Widget _buildNextButton(double height, double width) {
  //   return Positioned(
  //     bottom: height * 0.05,
  //     left: width * 0.05,
  //     right: width * 0.05,
  //     child: InkWell(
  //       overlayColor: const WidgetStatePropertyAll(Colors.transparent),
  //       onTap: nextPage, // * Handle button tap to go to the next page
  //       child: Container(
  //         height: height < 800 ? height * 0.06 : height * 0.07,
  //         padding: EdgeInsets.symmetric(horizontal: width * 0.04),
  //         margin: EdgeInsets.symmetric(horizontal: width * 0.05),
  //         decoration: const BoxDecoration(
  //           color: AppColors.kBlueColor,
  //           borderRadius: BorderRadius.all(Radius.circular(12)),
  //         ),
  //         child: Center(
  //           child: AutoSizeText(
  //             buttonText, // * Display the dynamic button text
  //             style: AppTypography.bold24(color: AppColors.kWhite),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class QuranOnBoardingButton extends StatelessWidget {
  const QuranOnBoardingButton({
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonWidth,
    super.key,
  });
  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight < 800 ? buttonHeight * 0.06 : buttonHeight * 0.07,
      padding: EdgeInsets.symmetric(horizontal: buttonWidth * 0.04),
      margin: EdgeInsets.symmetric(horizontal: buttonWidth * 0.05),
      child: Center(
        child: AutoSizeText(
          buttonText,
          style: AppTypography.bold24(color: AppColors.kWhite),
        ),
      ),
    ).withQuranGoldenGradient(
      borderRadius: BorderRadius.circular(10.r),
    );
  }
}
