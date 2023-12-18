import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/common/common.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/now_playing_music_artist_image_widget.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/now_playing_music_container_widget.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/now_playing_music_follow_shuffle_buttons_widget.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/now_playing_music_header_widget.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/now_playing_music_play_actions_widget.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/now_playing_music_seek_bar_widget.dart';

@RoutePage()
class MusicPlayerNowPlayingScreen extends StatelessWidget {
  const MusicPlayerNowPlayingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    final currentMusic = cubit.currentPlayingPausedMusic;
    return MusicPlayerScaffold(
      withOverlayPlayingMusic: false,
      topSafeArea: false,
      body: NowPlayingMusicContainerWidget(
        child: Column(
          children: [
            const NowPlayingMusicHeaderWidget(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const AppGap(70),
                  const Center(
                    child: NowPlayingMusicArtistImageWidget(),
                  ),
                  const AppGap(44),
                  const NowPlayingMusicFollowShuffleButtonsWidget(),
                  const AppGap(70),
                  AppText.title(
                    currentMusic?.title ?? "",
                    textAlign: TextAlign.center,
                  ),
                  const AppGap.s(),
                  AppText.captionLight(
                    currentMusic?.artist.name ?? "",
                    textAlign: TextAlign.center,
                  ),
                  const AppGap(48),
                  const NowPlayingMusicPlaySeekBarWidget(),
                  const AppGap.xl(),
                  const NowPlayingMusicPlayActionsWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
