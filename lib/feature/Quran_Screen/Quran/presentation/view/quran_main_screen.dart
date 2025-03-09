import 'dart:developer';

import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/widgets.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran/presentation/widget/widget.dart';

class QuranMainScreen extends StatefulWidget {
  const QuranMainScreen({super.key});

  @override
  State<QuranMainScreen> createState() => _QuranMainScreenState();
}

class _QuranMainScreenState extends State<QuranMainScreen> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
  bool _isButtonPressed = false;

  void _onButtonPressed() {
    setState(() {
      _isButtonPressed = true;
    });

    Future.delayed(Duration.zero, () {
      setState(() {
        _isButtonPressed = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: AppColors.kCharcoalGray,
      drawer: const DashBoardDrawerWidget(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return SingleChildScrollView(
            child: Column(
              children: [
                QuranMainScreenAppBarWidget(
                  width: width,
                  drawerKey: _drawerKey,
                  height: height,
                ),
                QuranSectionContainer(width: width, height: height),
                CustomMasonryGridView(
                  isButtonPressed: _isButtonPressed,
                  onTap: (index) {
                    return handleDashBoardScreenTap(index, context);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void handleDashBoardScreenTap(int index, BuildContext context) {
    if (index == 0) {
      _onButtonPressed();
      log('message');
    } else {
      return _onButtonPressed();
    }
  }
}
