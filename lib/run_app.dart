import 'package:music_player/src/core/core.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/music_player_app.dart';

class RunApp {
  RunApp();

  Future<void> run() async {
    await _setupApp();
    runApp(const MusicPlayerApp());
  }
}

Future<void> _setupApp() async {
  /// ensure WidgetsBinding
  WidgetsFlutterBinding.ensureInitialized();

  /// configure dependency injection
  configureDependencies();

  /// hide status bar
  DeviceServices.makeStatusBarTransparent();

  /// disable landscape mode
  DeviceServices.disableLandscapeMode();
}
