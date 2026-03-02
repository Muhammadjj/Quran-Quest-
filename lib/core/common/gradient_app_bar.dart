part of 'common.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GradientAppBar({
    required this.title,
    required this.context,
    this.automaticallyImplyLeading = true,
    this.action = const [],
    this.bottom,
    super.key,
  });
  final String title;
  final PreferredSizeWidget? bottom;
  final BuildContext context;
  final List<Widget> action;
  final bool automaticallyImplyLeading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: automaticallyImplyLeading
          ? GestureDetector(
              onTap: NavigationHelper.goBack,
              child: Iconsax.arrow_left.toCustomIcon(),
            )
          : null,
      title: AutoSizeText(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontFamily: 'AmiriQuran',
            ),
      ).paddingBottom(15),
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: Container().withQuranGoldenGradient(),
      elevation: 4,
      actions: action,
      backgroundColor: Colors.transparent, //* Important for gradient effect
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
