import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class PlayingMusicTrailingActionsWidget extends StatelessWidget {
  const PlayingMusicTrailingActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    return SizedBox(
      width: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () => cubit
                .playPauseMusic(cubit.currentPlayingPausedMusic?.path ?? ""),
            child: AppIcon(
              cubit.isPlaying(cubit.currentPlayingPausedMusic?.path ?? "")
                  ? Icons.pause
                  : Icons.play_arrow,
            ),
          ),
          const AppGap.xs(),
          const AppIcon(
            Icons.skip_next,
          ),
        ],
      ),
    );
  }
}
