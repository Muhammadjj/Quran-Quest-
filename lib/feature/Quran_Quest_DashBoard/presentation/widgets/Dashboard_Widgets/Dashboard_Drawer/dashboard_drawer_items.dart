part of '../../widgets.dart';

class DrawerItemsWidget {
  DrawerItemsWidget({required this.screenSize});
  final ScreenSize screenSize;

  List<Widget> build() {
    final items = [
      {'icon': Iconsax.user, 'title': 'About Us', 'index': 0},
      {'icon': Iconsax.setting, 'title': 'Settings', 'index': 1},
      {'icon': Iconsax.message, 'title': 'WhatsApp Support', 'index': 2},
      {'icon': Iconsax.star, 'title': 'Feedback', 'index': 3},
      {'icon': Iconsax.share, 'title': 'Share Quran Quest', 'index': 4},
    ];

    return items
        .map(
          (item) => _buildDrawerItem(
            icon: item['icon']! as IconData,
            title: item['title']! as String,
            index: item['index']! as int,
          ),
        )
        .toList();
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required int index,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
        size: screenSize.iconSizeSmall,
      ),
      title: AutoSizeText(
        title,
        style: TextStyle(
          color: AppColors.kBlack,
          fontSize: screenSize.itemFontSize,
        ),
      ),
      onTap: () {
        if (index == 1) {
          // Close Drawer page
          NavigationHelper.goBack();
          // open these Quran Setting Screen
          NavigationHelper.pushNamed(RoutesName.quranSettings);
        }
      },
    );
  }
}
