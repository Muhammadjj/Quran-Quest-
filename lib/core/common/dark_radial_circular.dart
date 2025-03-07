part of 'common.dart';

class DarkRadialBackground extends StatelessWidget {
  DarkRadialBackground({
    required this.color,
    required this.position,
    super.key,
  });
  final String position;
  final Color color;
  final list = List.generate(
    3,
    (index) => HexColor.fromHex('1D192D'),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [...list, color],
            center: (position == 'bottomRight')
                ? Alignment.bottomRight
                : Alignment.topLeft,
          ),
        ),
      ),
    );
  }
}
