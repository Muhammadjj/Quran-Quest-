part of '../widgets.dart';

class DashBoardDrawerWidget extends StatelessWidget {
  const DashBoardDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent, //! Transparent to show gradient
              ),
              child: Text(
                'Quran Quest',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'MeQuran',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ).withQuranGoldenGradient(),
    );
  }
}
