import 'package:music_player/src/design_system/design_system.dart';

class MusicPlayerHeaderWidget extends StatelessWidget {
  const MusicPlayerHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText.title("ALL SONGS"),
        AppIcon(Icons.search_outlined, size: 18),
      ],
    );
  }
}
