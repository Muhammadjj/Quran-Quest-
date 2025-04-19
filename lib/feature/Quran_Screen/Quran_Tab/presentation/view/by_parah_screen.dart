import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/entities/quran_parah_list.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/widgets/widget.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/presentation/view/parah_detail_screen.dart';

class ByParahScreen extends StatefulWidget {
  const ByParahScreen({super.key});

  @override
  State<ByParahScreen> createState() => _ByParahScreenState();
}

class _ByParahScreenState extends State<ByParahScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: ListView.builder(
            itemCount: ParahListUtils.juzNames.length,
            itemBuilder: (context, index) {
              final parah = ParahListUtils.juzNames[index];
              return ParahCardWidget(
                onTap: () {
                  NavigationHelper.push(
                    MaterialPageRoute(
                      builder: (_) => ParahDetailMainScreen(
                        parahIndex: index + 1,
                      ),
                    ),
                  );
                },
                surahNameArabic: parah['arabic'].toString(),
                surahNameEnglish: parah['english'].toString(),
                verseCount: int.parse(parah['total_verses'].toString()),
                numberOfSurah: index + 1,
                height: height,
                width: width,
              );
            },
          ),
        );
      },
    );
  }
}
