import 'package:flutter/material.dart' show Colors;
import 'package:flutter/services.dart';

class DeviceServices {
  DeviceServices._();

  static void makeStatusBarTransparent() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
      ),
    );
  }

  static void disableLandscapeMode() => SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      );
}
