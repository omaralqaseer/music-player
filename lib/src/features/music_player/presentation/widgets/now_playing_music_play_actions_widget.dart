import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class NowPlayingMusicPlayActionsWidget extends StatelessWidget {
  const NowPlayingMusicPlayActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    final currentMusic = cubit.currentPlayingPausedMusic;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AppIcon(Icons.skip_previous),
        const AppGap.m(),
        const AppIcon(Icons.fast_rewind, size: 32),
        const AppGap.m(),
        GestureDetector(
          onTap: () => cubit.playPauseMusic(currentMusic?.path ?? ""),
          child: Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColorsData.white,
            ),
            child: Center(
              child: AppIcon(
                cubit.isPlaying(currentMusic?.path ?? "")
                    ? Icons.pause
                    : Icons.play_arrow,
                color: AppColorsData.blackIcon,
                size: 54,
              ),
            ),
          ),
        ),
        const AppGap.m(),
        const AppIcon(Icons.fast_forward, size: 32),
        const AppGap.m(),
        const AppIcon(Icons.skip_next),
      ],
    );
  }
}
