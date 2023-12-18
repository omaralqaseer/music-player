import 'package:auto_route/auto_route.dart';
import 'package:music_player/src/config/router/music_player_app_router.dart';
import 'package:music_player/src/design_system/design_system.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MusicPlayerRoute(),
        SearchRoute(),
        PodcastRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        const icons = [
          Icons.home_outlined,
          Icons.search,
          Icons.podcasts_outlined,
          Icons.settings,
        ];
        return SnakeNavigationBar.color(
          currentIndex: tabsRouter.activeIndex,
          selectedItemColor: AppColorsData.white,
          snakeViewColor: AppColorsData.primary,
          unselectedItemColor: AppColorsData.white,
          backgroundColor: AppColorsData.secondary.withOpacity(0.4),
          snakeShape: SnakeShape.indicator,
          onTap: tabsRouter.setActiveIndex,
          items: List.generate(icons.length, (index) {
            return BottomNavigationBarItem(
              icon: AppIcon(
                icons[index],
                size: tabsRouter.activeIndex == index ? 30 : 24,
              ),
              label: null,
            );
          }),
        );
      },
    );
  }
}
