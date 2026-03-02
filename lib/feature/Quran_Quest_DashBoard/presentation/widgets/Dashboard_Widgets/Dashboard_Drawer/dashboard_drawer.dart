part of '../../widgets.dart';

class DashBoardDrawerWidget extends StatelessWidget {
  const DashBoardDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenSize = ScreenSize(constraints);

          return ColoredBox(
            color: AppColors.transparent,
            child: <Widget>[
              // ! Drawer Header Widget
              DashBoardDrawerHeaderWidget(screenSize: screenSize),
              // ! Using Spread Operator Drawer Items
              ...DrawerItemsWidget(screenSize: screenSize).build(),
              const Spacer(),
              // ! Drawer Footer Widget
              const DashBoardDrawerFooterWidget(),
            ].addColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ).withQuranGoldenGradient();
        },
      ),
    );
  }
}

//! Drawer Screen Size items
class ScreenSize {
  ScreenSize(this.constraints);
  final BoxConstraints constraints;

  bool get isSmallScreen => constraints.maxWidth < 600;

  double get iconSize => isSmallScreen ? 40 : 50;
  double get iconSizeSmall => isSmallScreen ? 20 : 24;
  double get titleFontSize => isSmallScreen ? 18 : 22;
  double get subtitleFontSize => isSmallScreen ? 12 : 14;
  double get itemFontSize => isSmallScreen ? 14 : 16;
  double get footerFontSize => isSmallScreen ? 10 : 12;
  double get spacing => isSmallScreen ? 8 : 10;
  double get paddingHorizontal => isSmallScreen ? 16 : 20;
  double get paddingVertical => isSmallScreen ? 8 : 10;
}
