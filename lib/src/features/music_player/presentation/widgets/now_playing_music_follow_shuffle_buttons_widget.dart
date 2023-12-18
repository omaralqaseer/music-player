import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class NowPlayingMusicFollowShuffleButtonsWidget extends StatelessWidget {
  const NowPlayingMusicFollowShuffleButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GlobalMusicPlayerCubit>();
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: OutlinedButton.icon(
              onPressed: () {
                // Add your Follow button logic here
              },
              icon: const Icon(
                Icons.favorite_outline_outlined,
                color: AppColorsData.white,
              ),
              label: const AppText.captionBold("FOLLOW"),
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all<Color>(
                  AppColorsData.transparent,
                ),
                side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: AppColorsData.white,
                  ), // Set the border color to white
                ),
              )),
        ),
        const AppGap.m(),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {
              // Add your Shuffle Play button logic here
            },
            icon: const Icon(
              Icons.shuffle_outlined,
              color: AppColorsData.white,
            ),
            label: const AppText.captionBold("SHUFFLE PLAY"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                AppColorsData.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
