import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/core/core.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class NowPlayingMusicPlaySeekBarWidget extends StatelessWidget {
  const NowPlayingMusicPlaySeekBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    final currentMusic = cubit.currentPlayingPausedMusic;
    return Row(
      children: [
        AppText.captionLight(
          Duration.zero.formatDuration(withSpace: false),
        ),
        Expanded(
          child: StreamBuilder<Duration>(
            stream: cubit.currentPlayingPosition,
            builder: (context, snapshot) {
              return Slider(
                value: snapshot.data?.inMilliseconds.toDouble() ?? 0.0,
                activeColor: AppColorsData.primary,
                inactiveColor: AppColorsData.white.withOpacity(0.35),
                thumbColor: AppColorsData.white,
                overlayColor: MaterialStateProperty.all<Color>(
                  AppColorsData.white.withOpacity(0.35),
                ),
                max: currentMusic?.duration.inMilliseconds.toDouble() ?? 0.0,
                onChanged: (_) {},
              );
            },
          ),
        ),
        AppText.captionLight(
          currentMusic?.duration.formatDuration(withSpace: false) ?? "",
        ),
      ],
    );
  }
}
