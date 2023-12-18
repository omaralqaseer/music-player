import 'package:gap/gap.dart';
import 'package:music_player/src/design_system/design_system.dart';

class AppGap extends StatelessWidget {
  const AppGap(
    this.size, {
    Key? key,
  }) : super(key: key);

  const AppGap.xxs({
    Key? key,
  })  : size = AppSpacingsData.xxs,
        super(key: key);

  const AppGap.xs({
    Key? key,
  })  : size = AppSpacingsData.xs,
        super(key: key);

  const AppGap.s({
    Key? key,
  })  : size = AppSpacingsData.s,
        super(key: key);

  const AppGap.m({
    Key? key,
  })  : size = AppSpacingsData.m,
        super(key: key);

  const AppGap.l({
    Key? key,
  })  : size = AppSpacingsData.l,
        super(key: key);

  const AppGap.xl({
    Key? key,
  })  : size = AppSpacingsData.xl,
        super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Gap(size);
  }
}
