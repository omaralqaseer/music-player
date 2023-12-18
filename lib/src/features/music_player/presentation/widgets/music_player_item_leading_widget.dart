import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/data/models/music_model.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class MusicPlayerItemLeadingWidget extends StatelessWidget {
  const MusicPlayerItemLeadingWidget({Key? key, required this.music})
      : super(key: key);
  final MusicModel music;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    return GestureDetector(
      onTap: () => cubit.playPauseMusic(music.path),
      child: Container(
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: cubit.isPlaying(music.path)
              ? AppColorsData.primary
              : AppColorsData.white,
        ),
        child: Center(
          child: AppIcon(
            cubit.isPlaying(music.path) ? Icons.pause : Icons.play_arrow,
            color: cubit.isPlaying(music.path)
                ? AppColorsData.white
                : AppColorsData.primary,
          ),
        ),
      ),
    );
  }
}
