import 'package:music_player/src/core/core.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/data/models/music_model.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/music_player_item_leading_widget.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/music_player_selected_container_widget.dart';

class MusicPlayerItemWidget extends StatelessWidget {
  const MusicPlayerItemWidget({Key? key, required this.music})
      : super(key: key);
  final MusicModel music;

  @override
  Widget build(BuildContext context) {
    return MusicPlayerSelectedContainerWidget(
      music: music,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: AppSpacingsData.xxs),
        title: AppText.bodyBold(music.title),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: AppSpacingsData.xs),
          child: AppText.smallLight(music.artist.name),
        ),
        trailing: AppText.smallLight(music.duration.formatDuration()),
        leading: MusicPlayerItemLeadingWidget(music: music),
      ),
    );
  }
}
