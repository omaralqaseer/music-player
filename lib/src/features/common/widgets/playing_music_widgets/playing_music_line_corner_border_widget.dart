import 'package:music_player/src/design_system/design_system.dart';

class PlayingMusicLineCornerBorderWidget extends StatelessWidget {
  const PlayingMusicLineCornerBorderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: CustomPaint(
        painter: _LinearCornerPainter(),
      ),
    );
  }
}

class _LinearCornerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double h = size.height;
    double radius = AppRadiusData.medium;

    Paint paint = Paint()
      ..color = AppColorsData.primary
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    Path bottomLeftCornerArc = Path()
      ..moveTo(radius, h)
      ..arcToPoint(Offset(0, h - radius), radius: Radius.circular(radius));
    Path bottomCenterArc = Path()
      ..moveTo(160, 0)
      ..arcToPoint(const Offset(6, 0));
    canvas.drawPath(bottomLeftCornerArc, paint);
    canvas.drawPath(bottomCenterArc, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
