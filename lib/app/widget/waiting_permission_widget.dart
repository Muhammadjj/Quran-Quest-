part of 'widget.dart';

class WaitingPermissionWidget extends StatelessWidget {
  const WaitingPermissionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: <Widget>[
          const PlayLottie(
            lottie: AppLottie.findLocation,
          ),
          AutoSizeText(
            'Looking for your location',
            style: AppTypography.bold14(),
          ),
        ].addColumn(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
