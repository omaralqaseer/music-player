import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:music_player/src/core/injection/app_injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initAppDependenciesGetIt', // default
  preferRelativeImports: true, // default
)
void configureDependencies() => getIt.$initAppDependenciesGetIt();
