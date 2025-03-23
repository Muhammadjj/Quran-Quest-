part of 'common.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GradientAppBar({
    required this.title,
    required this.context,
    this.bottom,
    super.key,
  });
  final String title;
  final PreferredSizeWidget? bottom;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: NavigationHelper.goBack,
        child: Iconsax.arrow_left.toCustomIcon(),
      ),
      title: AutoSizeText(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontFamily: 'AmiriQuran',
            ),
      ).paddingBottom(15),
      centerTitle: true,
      flexibleSpace: Container().withQuranGoldenGradient(),
      elevation: 4,
      backgroundColor: Colors.transparent, //* Important for gradient effect
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
