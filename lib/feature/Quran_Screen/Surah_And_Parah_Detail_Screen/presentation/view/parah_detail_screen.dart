import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Surah_And_Parah_Detail_Screen/presentation/bloc/quran_surah_detail_bloc.dart';

class ParahDetailMainScreen extends StatefulWidget {
  const ParahDetailMainScreen({
    required this.parahIndex,
    super.key,
  });
  final int parahIndex;

  @override
  State<ParahDetailMainScreen> createState() => _ParahDetailMainScreenState();
}

class _ParahDetailMainScreenState extends State<ParahDetailMainScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<QuranSurahDetailBloc>()
        .add(QuranParahDetailFetchIndexEvent(parahIndex: widget.parahIndex));
    log('Parah Detail Number : ${widget.parahIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dayBorderPrimary,
      appBar: AppBar(title: const Text('Parah Details')),
      body: BlocBuilder<QuranSurahDetailBloc, QuranSurahDetailState>(
        builder: (context, state) {
          if (state is QuranSurahDetailLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is QuranParahDetailLoadedState) {
            return ListView.builder(
              itemCount: state.quranParahResponseModel.data!.ayahs!.length,
              itemBuilder: (context, index) {
                final item = state.quranParahResponseModel.data!.ayahs![index];
                return ListTile(
                  title: Text(
                    state.quranParahResponseModel.data!.ayahs![index].text
                        .toString(),
                  ),
                  subtitle: Text(item.surah!.numberOfAyahs.toString()),
                );
              },
            );
          } else if (state is QuranSurahDetailErrorMessage) {
            return Center(child: Text('Error: ${state.failure.message}'));
          }
          return const Center(child: Text('No data available'));
        },
      ),
    );
  }
}
