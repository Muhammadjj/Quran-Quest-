part of 'widget.dart';

class PermissionDeniedWidget extends StatelessWidget {
  const PermissionDeniedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: PrimaryButton(
        onTap: () => context.read<LocationBloc>().add(RetryPermissionEvent()),
        isBorder: true,
        color: AppColors.kWhite,
        text: 'Location Permission',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: <Widget>[
          const PlayLottie(
            lottie: AppLottie.locationNotFound,
            isPlayBackAndForward: true,
          ),
          AutoSizeText(
            "The app requires access to your location in order to provide accurate Quran Quest information.\n Please enable location services to enjoy the app's full functionality.",
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
