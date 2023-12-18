import 'package:auto_route/auto_route.dart';
import 'package:music_player/src/features/home/presentation/screens/home_screen.dart';
import 'package:music_player/src/features/music_player/presentation/screens/music_player_now_playing_screen.dart';
import 'package:music_player/src/features/music_player/presentation/screens/music_player_screen.dart';
import 'package:music_player/src/features/podcast/presentation/screens/podcast_screen.dart';
import 'package:music_player/src/features/search/presentation/screens/search_screen.dart';
import 'package:music_player/src/features/settings/presentation/screens/settings_screen.dart';

part 'music_player_app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: MusicPlayerRoute.page,
              initial: true,
            ),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: PodcastRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: MusicPlayerNowPlayingRoute.page),
      ];
}
