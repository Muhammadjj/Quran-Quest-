import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/entities/quran_parah_list.dart';

class ByParahScreen extends StatefulWidget {
  const ByParahScreen({super.key});

  @override
  State<ByParahScreen> createState() => _ByParahScreenState();
}

class _ByParahScreenState extends State<ByParahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kCharcoalGray,
      body: ListView.builder(
        itemCount: ParahListUtils.juzNames.length,
        itemBuilder: (context, index) {
          final parah = ParahListUtils.juzNames[index];
          return ListTile(
            contentPadding: const EdgeInsets.all(15),
            title: Text(
              parah,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 25,
                fontFamily: 'MeQuran',
              ),
            ),
            subtitle: Text(
              '${index + 1}',
              style: const TextStyle(color: AppColors.white),
            ),
          );
        },
      ),
    );
  }
}
