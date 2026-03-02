part of '../widgets.dart';

class AllahNameCardSwiperPage extends StatelessWidget {
  const AllahNameCardSwiperPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.75;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: GradientAppBar(
        title: '99 Names of Allah [S.W.T]',
        context: context,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // _buildBackgroundImage(context),
          _buildCardSwiper(height),
        ],
      ),
    );
  }

  // Widget _buildBackgroundImage(BuildContext context) {
  //   return Positioned(
  //     bottom: 0,
  //     left: 0,
  //     right: 0,
  //     child: Image.asset(
  //       AppImages.shadowMosque,
  //       fit: BoxFit.fitWidth,
  //       width: double.infinity,
  //       height: MediaQuery.of(context).size.height * 0.15,
  //     ),
  //   );
  // }

  Widget _buildCardSwiper(double height) {
    return SizedBox(
      height: height * 0.9,
      width: double.infinity,
      child: CardSwiper(
        padding: const EdgeInsets.all(30),
        cardsCount: allahNameModel.length,
        allowedSwipeDirection: const AllowedSwipeDirection.only(
            right: true, left: true, down: false, up: false),
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
          final name = allahNameModel[index];
          return _buildCard(name: name, context: context);
        },
      ),
    );
  }

  Widget _buildCard({
    required QuranAllahNameModel name,
    required BuildContext context,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.kDimGray
          : AppColors.kWhite,
      child: Stack(
        children: [
          _buildCardBackground(),
          _buildCardContent(name, context),
        ],
      ),
    );
  }

  Widget _buildCardBackground() {
    return Positioned.fill(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          AppImages.quranFrame,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _buildCardContent(QuranAllahNameModel name, BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            name.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: 50.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MeQuran',
                ),
          ),
          const SizedBox(height: 20),
          AutoSizeText(
            '${name.transliteration} [${name.number}]',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  // color: Colors.white,
                ),
          ),
          AutoSizeText(
            name.meaning,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  // color: Colors.white,
                ),
          ),
        ],
      ).paddingAll(16),
    );
  }
}
