import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';

import '../cubit/global_music_player_cubit.dart';

class NowPlayingMusicArtistImageWidget extends StatelessWidget {
  const NowPlayingMusicArtistImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    final currentMusic = cubit.currentPlayingPausedMusic;
    return Stack(
      children: [
        CircleAvatar(
          radius: 112,
          backgroundImage: AssetImage(
            currentMusic?.artist.coverImage ?? "",
          ),
        ),
        Positioned.fill(
          left: AppSpacingsData.xs,
          right: AppSpacingsData.xs,
          top: AppSpacingsData.xs,
          bottom: AppSpacingsData.xs,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColorsData.white.withOpacity(0.55),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
