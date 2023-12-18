import 'package:auto_route/auto_route.dart';
import 'package:music_player/src/design_system/design_system.dart';

class NowPlayingMusicHeaderWidget extends StatelessWidget {
  const NowPlayingMusicHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => context.router.pop(),
          child: const AppIcon(Icons.arrow_back_ios_new, size: 18),
        ),
        const AppText.title("Now PLAYING"),
        const AppIcon(Icons.search_outlined, size: 18),
      ],
    );
  }
}
