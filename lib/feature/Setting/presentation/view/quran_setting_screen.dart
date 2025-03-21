import 'package:iconsax/iconsax.dart';
import 'package:quran_quest/export/export.dart';

class QuranSettingScreen extends StatefulWidget {
  const QuranSettingScreen({super.key});

  @override
  State<QuranSettingScreen> createState() => _QuranSettingScreenState();
}

class _QuranSettingScreenState extends State<QuranSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kCharcoalGray,
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
              buildSettingItem(Iconsax.moon5, 'Dark Mode', hasSwitch: true),
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
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[400], size: 28),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: TextStyle(color: Colors.grey[500], fontSize: 14),
            )
          : null,
      trailing: hasSwitch
          ? Switch(
              value: true,
              padding: EdgeInsets.zero,
              activeColor: Colors.green,
              onChanged: (value) {},
            )
          : null,
    );
  }
}
