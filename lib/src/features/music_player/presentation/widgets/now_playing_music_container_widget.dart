import 'package:music_player/src/config/constants/constants.dart';
import 'package:music_player/src/design_system/design_system.dart';

class NowPlayingMusicContainerWidget extends StatelessWidget {
  const NowPlayingMusicContainerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacingsData.l,
        vertical: AppSpacingsData.x5l,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsConstants.blurBackgroundImagesPath),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
