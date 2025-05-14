part of 'widget.dart';

class LocationServiceDisabledWidget extends StatelessWidget {
  const LocationServiceDisabledWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: PrimaryButton(
        onTap: () =>
            context.read<LocationBloc>().add(EnableLocationServiceEvent()),
        isBorder: true,
        color: AppColors.kWhite,
        text: 'Enable Location',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: <Widget>[
          const PlayLottie(
            lottie: AppLottie.locationService,
            isPlayBackAndForward: true,
          ),
          AutoSizeText(
            'Hey! 🌦️ Boost your Quran Quest app experience—enable location services for hyper-local forecasts! 🌍📱',
            textAlign: TextAlign.center,
            style: AppTypography.medium14(),
          ),
        ]
            .addColumn(
              mainAxisAlignment: MainAxisAlignment.center,
            )
            .paddingAll(16),
      ),
    );
  }
}
