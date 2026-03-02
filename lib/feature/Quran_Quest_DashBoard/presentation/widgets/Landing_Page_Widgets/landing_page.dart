part of '../widgets.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  ValueNotifier<int> bottomNavigatorTrigger = ValueNotifier(1);
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    super.initState();
  }

  // screen size
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: HexColor.fromHex('#181a1f'),
      body: Stack(
        children: [
          //! Background with radial gradient
          // DarkRadialBackground(
          //   color: HexColor.fromHex('#181a1f'),
          //   position: 'topLeft',
          // ),
          //! Page content based on bottom navigation selection
          ValueListenableBuilder(
            valueListenable: bottomNavigatorTrigger,
            builder: (context, value, child) {
              return PageStorage(
                bucket: bucket,
                child: dashBoardScreens[bottomNavigatorTrigger.value],
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  //! Method to build bottom navigation bar
  Widget _buildBottomNavigationBar() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: size.height * 0.10,
        padding: EdgeInsets.only(top: 10.h, right: 30.w, left: 30.w),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: HexColor.fromHex('#181a1f').withOpacity(0.8),
        ),
        child: <Widget>[
          BottomNavigationItem(
            itemIndex: 0,
            notifier: bottomNavigatorTrigger,
            assets: AppImages.quranIconSVG,
          ),
          const Spacer(),
          BottomNavigationItem(
            itemIndex: 1,
            notifier: bottomNavigatorTrigger,
            assets: AppImages.homeFavoriteSVG,
          ),
          const Spacer(),
          BottomNavigationItem(
            itemIndex: 2,
            notifier: bottomNavigatorTrigger,
            assets: AppImages.qiblaDirection,
          ),
          // const Spacer(),
          // BottomNavigationItem(
          //   itemIndex: 3,
          //   notifier: bottomNavigatorTrigger,
          //   assets: AppImages.chapletIconSVG,
          // ),
        ].addRow(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
