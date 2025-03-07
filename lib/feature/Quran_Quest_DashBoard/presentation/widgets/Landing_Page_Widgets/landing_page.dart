import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/Landing_Page_Widgets/bottom_navigation_bar_items.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/Landing_Page_Widgets/list_of_pages.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  ValueNotifier<int> bottomNavigatorTrigger = ValueNotifier(0);
  final PageStorageBucket bucket = PageStorageBucket();

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
        padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
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
            assets: AppImages.mosqueIconSVG,
          ),
          const Spacer(),
          BottomNavigationItem(
            itemIndex: 2,
            notifier: bottomNavigatorTrigger,
            assets: AppImages.prayIconSVG,
          ),
          const Spacer(),
          BottomNavigationItem(
            itemIndex: 3,
            notifier: bottomNavigatorTrigger,
            assets: AppImages.chapletIconSVG,
          ),
        ].addRow(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
