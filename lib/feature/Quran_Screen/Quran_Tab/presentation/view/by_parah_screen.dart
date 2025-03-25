import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/entities/quran_parah_list.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/presentation/view/parah_detail_screen.dart';

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
                  builder: (_) => ParahDetailMainScreen(
                    parahIndex: index + 1,
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
