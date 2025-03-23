// import 'package:flutter/widgets.dart';
// import 'package:quran_quest/export/export.dart';

// class ParahDetailMainScreen extends StatefulWidget {
//   const ParahDetailMainScreen({super.key});

//   @override
//   State<ParahDetailMainScreen> createState() => _ParahDetailMainScreenState();
// }

// class _ParahDetailMainScreenState extends State<ParahDetailMainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Parah_Detail_Screen/presentation/bloc/parah_detail_bloc.dart';

class ParahDetailScreen extends StatefulWidget {
  const ParahDetailScreen({super.key, this.parahIndex = 2});
  final int parahIndex;

  @override
  State<ParahDetailScreen> createState() => _ParahDetailScreenState();
}

class _ParahDetailScreenState extends State<ParahDetailScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<ParahDetailBloc>()
        .add(ParahDetailFetchIndexEvent(parahIndex: widget.parahIndex));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dayBorderPrimary,
      appBar: AppBar(title: const Text('Parah Details')),
      body: BlocBuilder<ParahDetailBloc, ParahDetailState>(
        builder: (context, state) {
          if (state is ParahDetailLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ParahDetailLoadedState) {
            return ListView.builder(
              itemCount: state.parahResponseModel.data!.ayahs!.length,
              itemBuilder: (context, index) {
                final item = state.parahResponseModel.data!.ayahs![index];
                return ListTile(
                  title: Text(state.parahResponseModel.data!.ayahs![index].text
                      .toString()),
                  subtitle: Text(item.surah!.numberOfAyahs.toString()),
                );
              },
            );
          } else if (state is ParahDetailErrorMessageState) {
            return Center(child: Text('Error: ${state.failure.message}'));
          }
          return const Center(child: Text('No data available'));
        },
      ),
    );
  }
}
