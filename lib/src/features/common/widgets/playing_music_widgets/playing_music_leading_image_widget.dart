import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/core/core.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class PlayingMusicLeadingImageWidget extends StatelessWidget {
  const PlayingMusicLeadingImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadiusData.small),
      child: Image.asset(
        cubit.currentPlayingArtistImagePath.orEmpty,
        fit: BoxFit.cover,
        width: 42,
        height: 42,
      ),
    );
  }
}
