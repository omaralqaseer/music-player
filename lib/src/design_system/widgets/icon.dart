import 'package:music_player/src/design_system/design_system.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    Key? key,
    this.size = 24,
    this.color = AppColorsData.white,
  }) : super(key: key);
  final IconData? icon;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
