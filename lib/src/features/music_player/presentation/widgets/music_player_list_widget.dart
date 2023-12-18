import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/music_player_item_widget.dart';

class MusicPlayerListWidget extends StatelessWidget {
  const MusicPlayerListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    final musics = cubit.musics;
    return ListView.builder(
      itemCount: musics.length,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacingsData.m,
        vertical: AppSpacingsData.xl,
      ),
      itemBuilder: (_, index) => MusicPlayerItemWidget(music: musics[index]),
    );
  }
}
