import 'package:auto_route/auto_route.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/common/common.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/music_player_header_widget.dart';
import 'package:music_player/src/features/music_player/presentation/widgets/music_player_list_widget.dart';

@RoutePage()
class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MusicPlayerScaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacingsData.l),
            child: MusicPlayerHeaderWidget(),
          ),
          Expanded(
            child: MusicPlayerListWidget(),
          ),
        ],
      ),
    );
  }
}
