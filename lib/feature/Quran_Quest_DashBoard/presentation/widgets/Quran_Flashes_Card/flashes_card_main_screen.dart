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
    _fetchRandomAyah();
  }

  void _fetchRandomAyah() {
    context.read<RandomAyahBloc>().add(
          const QuranFlashCardEvent(selectLanguage: 'ur.jalandhry'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  GradientAppBar _buildAppBar(BuildContext context) {
    return GradientAppBar(
      title: 'Flashes Screen',
      context: context,
      action: [
        GestureDetector(
          onTap: () {},
          child: Iconsax.language_circle.toCustomIcon(
            color: Theme.of(context).brightness == Brightness.light
                ? AppColors.kWhite
                : AppColors.kBlack,
          ),
        ),
        SizedBox(width: 10.w),
      ],
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
              return const Center(child: CircularProgressIndicator());
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
