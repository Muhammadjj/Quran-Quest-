part of '../widget.dart';

class QuranMainScreenAppBarWidget extends StatelessWidget {
  const QuranMainScreenAppBarWidget({
    required this.width,
    required GlobalKey<ScaffoldState> drawerKey,
    required this.height,
    super.key,
  }) : _drawerKey = drawerKey;

  final double width;
  final GlobalKey<ScaffoldState> _drawerKey;
  final double height;

  @override
  Widget build(BuildContext context) {
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
                'Quran',
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
                  _drawerKey.currentState?.openDrawer();
                },
              ),
            ),
          ].addColumn(),
          // * Quran Image
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppImages.quranBGRemover,
              fit: BoxFit.contain,
              width: double.infinity,
              height: height < 600 ? 130.h : 180.h,
            ),
          ),
        ],
      ),
    ).withQuranGoldenGradient();
  }
}
