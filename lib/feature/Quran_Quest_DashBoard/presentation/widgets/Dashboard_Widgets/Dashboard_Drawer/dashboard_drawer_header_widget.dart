part of '../../widgets.dart';

class DashBoardDrawerHeaderWidget extends StatelessWidget {
  const DashBoardDrawerHeaderWidget({
    required this.screenSize,
    super.key,
  });

  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.menu_book_rounded,
            color: Colors.black,
            size: screenSize.iconSize,
          ),
          SizedBox(height: screenSize.spacing),
          AutoSizeText(
            'Quran Majeed',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenSize.titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          AutoSizeText(
            'Islamic App',
            style: TextStyle(
              color: Colors.black87,
              fontSize: screenSize.subtitleFontSize,
            ),
          ),
        ],
      ),
    );
  }
}
