part of '../widgets.dart';

class FlashCardMainScreen extends StatefulWidget {
  const FlashCardMainScreen({super.key});

  @override
  State<FlashCardMainScreen> createState() => _FlashCardMainScreenState();
}

class _FlashCardMainScreenState extends State<FlashCardMainScreen> {
  //! Selected language for the flash card
  String selectedLanguage = 'ur.jalandhry';

  @override
  void initState() {
    super.initState();
    _fetchRandomAyah();
  }

  void _fetchRandomAyah() {
    context.read<RandomAyahBloc>().add(
          QuranFlashCardEvent(selectLanguage: selectedLanguage),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlashCardSelectLanguage(
        selectedLanguage: selectedLanguage,
        onLanguageSelected: (language) {
          setState(() {
            //* Update the selected language
            selectedLanguage = language;
            //Todos=> Trigger the event to fetch random Ayah with the selected language
            _fetchRandomAyah();
          });
        },
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        return BlocBuilder<RandomAyahBloc, RandomAyahState>(
          builder: (context, state) {
            if (state is RandomAyahLoading) {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? AppColors.kWhite
                          : AppColors.kGreen,
                ),
              );
            } else if (state is QuranFlashCardState) {
              return _buildFlashCardList(
                state.quranFlashCardModel,
                width,
                height,
              );
            } else if (state is RandomAyahError) {
              return const Center(child: Text('Error loading data'));
            }
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget _buildFlashCardList(
    QuranFlashCardModel flashCardModel,
    double width,
    double height,
  ) {
    final arabicText = flashCardModel.data[0].ayahs;
    final urduText = flashCardModel.data[1].ayahs;

    return ListView.builder(
      itemCount: urduText.length,
      itemBuilder: (context, index) {
        final arabicAyah = arabicText[index];
        final urduAyah = urduText[index];

        return IslamicFlashCardWidget(
          arabicFlashesText: arabicAyah.text,
          urduFlashText: urduAyah.text,
          juz: arabicAyah.juz.toString(),
          manzil: arabicAyah.manzil.toString(),
          height: height,
          width: width,
        );
      },
    );
  }
}
