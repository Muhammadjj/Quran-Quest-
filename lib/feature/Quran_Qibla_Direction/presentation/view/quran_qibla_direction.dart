import 'dart:math';

import 'package:flutter_compass/flutter_compass.dart';
import 'package:quran_quest/export/export.dart';

class QuranQiblaDirection extends StatefulWidget {
  const QuranQiblaDirection({super.key});

  @override
  State<QuranQiblaDirection> createState() => _QuranQiblaDirectionState();
}

class _QuranQiblaDirectionState extends State<QuranQiblaDirection> {
  double? heading;

  @override
  void initState() {
    super.initState();
    FlutterCompass.events!.listen((event) {
      setState(() {
        heading = event.heading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: GradientAppBar(
        title: 'Qibla Direction',
        context: context,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              '${heading?.ceil() ?? 'Loading...'}° W',
              style: const TextStyle(fontSize: 24),
            ),
            Stack(
              children: [
                Image.asset(AppImages.cadrant),
                Positioned(
                  top: 60,
                  left: 160,
                  child: Transform.rotate(
                    angle: (heading ?? 0) * (pi / 180) * -1,
                    child: Image.asset(
                      AppImages.compass,
                      fit: BoxFit.cover,
                      height: 200,
                    ).withQuranShadeMaskGradient(),
                  ),
                ),
              ],
            ).paddingAll(20),
          ],
        ),
      ),
    );
  }
}
