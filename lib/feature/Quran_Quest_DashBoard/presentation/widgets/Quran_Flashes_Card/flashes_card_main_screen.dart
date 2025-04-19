part of '../widgets.dart';

class FlashCardMainScreen extends StatefulWidget {
  const FlashCardMainScreen({super.key});

  @override
  State<FlashCardMainScreen> createState() => _FlashCardMainScreenState();
}

class _FlashCardMainScreenState extends State<FlashCardMainScreen> {
  @override
  void initState() {
    super.initState();
    // BlocProvider.of<RandomAyahBloc>(context).add(
    //   const QuranFlashCardEvent(
    //     selectLanguage: 'ur.jalandhry',
    //   ),
    // );
    // context.read()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkGold,
        title: const Text('Flashes Screen '),
      ),
    );
  }
}
