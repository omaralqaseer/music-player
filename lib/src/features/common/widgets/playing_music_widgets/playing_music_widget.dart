import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/config/router/music_player_app_router.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/common/widgets/playing_music_widgets/playing_music_leading_image_widget.dart';
import 'package:music_player/src/features/common/widgets/playing_music_widgets/playing_music_line_corner_border_widget.dart';
import 'package:music_player/src/features/common/widgets/playing_music_widgets/playing_music_trailing_actions_widget.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class PlayingMusicWidget extends StatelessWidget {
  const PlayingMusicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    return Visibility(
      visible: cubit.showPlayingMusicOverLay,
      child: Positioned(
        bottom: 0,
        left: AppSpacingsData.xs,
        right: AppSpacingsData.xs,
        child: Stack(
          children: [
            Container(
              height: 60.0,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColorsData.secondary,
                borderRadius: BorderRadius.circular(AppRadiusData.medium),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppRadiusData.medium),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 28.0, sigmaY: 28.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSpacingsData.xxs,
                      horizontal: AppSpacingsData.xs,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.12), // Fill Opacity 12%
                    ),
                    child: ListTile(
                      onTap: () => context.router
                          .push(const MusicPlayerNowPlayingRoute()),
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      title: AppText.bodyRegular(
                        cubit.currentPlayingPausedMusic?.title ?? "",
                      ),
                      trailing: const PlayingMusicTrailingActionsWidget(),
                      leading: const PlayingMusicLeadingImageWidget(),
                    ),
                  ),
                ),
              ),
            ),
            const PlayingMusicLineCornerBorderWidget(),
          ],
        ),
      ),
    );
  }
}
