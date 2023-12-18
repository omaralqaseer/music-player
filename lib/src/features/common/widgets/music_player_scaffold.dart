import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/common/widgets/playing_music_widgets/playing_music_widget.dart';

class MusicPlayerScaffold extends StatelessWidget {
  const MusicPlayerScaffold({
    Key? key,
    required this.body,
    this.bottomSafeArea = false,
    this.topSafeArea = true,
    this.withOverlayPlayingMusic = true,
  }) : super(key: key);
  final Widget body;
  final bool bottomSafeArea;
  final bool topSafeArea;
  final bool withOverlayPlayingMusic;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: bottomSafeArea,
      top: topSafeArea,
      child: Scaffold(
        body: withOverlayPlayingMusic
            ? Stack(
                children: [
                  body,
                  const PlayingMusicWidget(),
                ],
              )
            : body,
      ),
    );
  }
}
