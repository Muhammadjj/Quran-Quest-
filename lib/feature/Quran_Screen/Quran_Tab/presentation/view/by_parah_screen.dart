import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/presentation/view/parah_details_main_screen.dart';
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
            onTap: () {
              NavigationHelper.push(
                MaterialPageRoute(
                  builder: (_) => ParahDetailScreen(
                    parahIndex: parah.length,
                  ),
                ),
              );
            },
            contentPadding: const EdgeInsets.all(15),
            title: Text(
              parah,
              style: TextStyle(
                color: AppColors.kWhite,
                fontSize: 25,
                fontFamily: 'MeQuran',
              ),
            ),
            subtitle: Text(
              '${index + 1}',
              style: TextStyle(color: AppColors.kWhite),
            ),
          );
        },
      ),
    );
  }
}
