import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/data/models/music_model.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class MusicPlayerSelectedContainerWidget extends StatelessWidget {
  const MusicPlayerSelectedContainerWidget(
      {Key? key, required this.music, required this.child})
      : super(key: key);
  final MusicModel music;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    return Container(
      padding: cubit.isPlaying(music.path)
          ? const EdgeInsets.symmetric(horizontal: AppSpacingsData.xs)
          : null,
      decoration: cubit.isPlaying(music.path)
          ? BoxDecoration(
              color: AppColorsData.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppRadiusData.regular),
            )
          : null,
      child: child,
    );
  }
}
