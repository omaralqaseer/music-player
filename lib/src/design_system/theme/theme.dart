import 'package:flutter/material.dart';
import 'package:music_player/src/design_system/theme/colors.dart';

import 'constants.dart';

class AppTheme {
  static ThemeData themeData() => ThemeData(
        useMaterial3: true,
        fontFamily: ThemeConstants.poppinsFontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColorsData.primary)
            .copyWith(background: AppColorsData.background),
      );
}
