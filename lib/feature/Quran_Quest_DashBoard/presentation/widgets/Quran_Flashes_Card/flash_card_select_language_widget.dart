part of '../widgets.dart';

/// A widget that displays a gradient app bar with a language selection option.
class FlashCardSelectLanguage extends StatelessWidget
    implements PreferredSizeWidget {
  const FlashCardSelectLanguage({
    required this.selectedLanguage,
    required this.onLanguageSelected,
    super.key,
  });
  final String selectedLanguage;
  final ValueChanged<String> onLanguageSelected;
  @override
  Widget build(BuildContext context) {
    return GradientAppBar(
      title: 'Flashes',
      context: context,
      action: [
        GestureDetector(
          onTap: () => _showLanguageSelectionSheet(context),
          child: Iconsax.language_circle.toCustomIcon(
            color: Theme.of(context).brightness == Brightness.light
                ? AppColors.kWhite
                : AppColors.kBlack,
          ),
        ),
        SizedBox(width: 10.w),
      ],
    );
  }

  /// Displays a bottom sheet for selecting a language.
  void _showLanguageSelectionSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: _buildLanguageOptions(context),
        ).paddingAll(16.sp);
      },
    );
  }

  ///! Builds a list of language selection options.
  List<Widget> _buildLanguageOptions(BuildContext context) {
    final languages = [
      {'title': 'English', 'code': 'en.sahih', 'color': Colors.blue},
      {'title': 'Urdu', 'code': 'ur.jalandhry', 'color': Colors.green},
      {'title': 'Hindi', 'code': 'hi.farooq', 'color': Colors.orange},
      {'title': 'French', 'code': 'fr.hamidullah', 'color': Colors.purple},
    ];

    return languages
        .map(
          (language) => ListTile(
            leading: Icon(Icons.language, color: language['color']! as Color),
            title: Text(
              language['title']! as String,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.kWhite
                    : AppColors.kBlack,
              ),
            ),
            onTap: () {
              onLanguageSelected(language['code']! as String);
              //Todos=> Close the bottom sheet after selecting a language
              Navigator.pop(context);
            },
          ),
        )
        .toList();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
