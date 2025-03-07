part of 'common.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GradientAppBar({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AutoSizeText(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.kBlack,
              fontWeight: FontWeight.bold,
            ),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.softGold, //* Default Soft Gold
              AppColors.deepGreen, //* Default Deep Green
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      elevation: 4,
      backgroundColor: Colors.transparent, //* Important for gradient effect
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
