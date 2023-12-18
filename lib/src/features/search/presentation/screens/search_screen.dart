import 'package:auto_route/auto_route.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/common/common.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MusicPlayerScaffold(
      body: Center(
        child: AppText.title('Search..'),
      ),
    );
  }
}
