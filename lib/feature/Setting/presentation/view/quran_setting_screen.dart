// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/app/app_Bloc/Quran_Theme_Cubit/quran_theme_cubit.dart';

class QuranSettingScreen extends StatefulWidget {
  const QuranSettingScreen({super.key});

  @override
  State<QuranSettingScreen> createState() => _QuranSettingScreenState();
}

class _QuranSettingScreenState extends State<QuranSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: GradientAppBar(title: 'Setting', context: context),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return ListView(
            padding: EdgeInsets.symmetric(
              horizontal: width > 600 ? 40 : 5,
            ),
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              buildSettingItem(
                Iconsax.moon,
                subtitle: 'Enable',
                'Override System Dark Mode',
                hasSwitch: true,
              ),
              buildSettingItem(
                Iconsax.moon5,
                'Dark Mode',
                subtitle: context.watch<QuranThemeCubit>().state.themeMode ==
                        ThemeMode.dark
                    ? 'Enable'
                    : 'Disable',
                hasSwitch: true,
                switchValue: context.watch<QuranThemeCubit>().state.themeMode ==
                    ThemeMode.dark,
                onSwitchChanged: (value) {
                  log('$value');
                  context.read<QuranThemeCubit>().toggleTheme();
                },
              ),
              buildSettingItem(
                Iconsax.microphone,
                'Default Language For Voice Commands',
              ),
              buildSettingItem(Iconsax.language_circle, 'Choose Language'),
              buildSettingItem(Iconsax.calendar, 'Prayer Times & Adhans'),
              buildSettingItem(
                Iconsax.notification,
                'Namaz Notification',
                hasSwitch: true,
              ),
              buildSettingItem(
                Iconsax.user,
                'Selected Recitor',
                subtitle: 'Raad-Mohammad-Al-Kurdi',
              ),
              buildSettingItem(
                Iconsax.book,
                'Selected Translation',
                subtitle: 'Maulana Wahiduddin Khan',
              ),
              buildSettingItem(
                Iconsax.book_1,
                'Selected Tafseer',
                subtitle: 'Tafseer Taqi Usmani',
              ),
              buildSettingItem(Iconsax.trash, 'Clear Audio Files'),
            ],
          );
        },
      ),
    );
  }

  Widget buildSettingItem(
    IconData icon,
    String title, {
    bool hasSwitch = false,
    String? subtitle,
    bool switchValue = false,
    void Function(bool)? onSwitchChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[400], size: 28),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 16.sp,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.kWhite
                  : AppColors.kBlack,
            ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: TextStyle(color: Colors.grey[500], fontSize: 14),
            )
          : null,
      trailing: hasSwitch
          ? QuranSwitchButton(
              value: switchValue,
              onChanged: onSwitchChanged ?? (_) {},
              activeColor: Colors.green,
            )
          : null,
    );
  }
}
