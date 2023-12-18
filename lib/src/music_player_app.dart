import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/src/core/core.dart';
import 'package:music_player/src/design_system/design_system.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_cubit.dart';

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<GlobalMusicPlayerCubit>()..setMusicsDurations(),
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData(),
      ),
    );
  }
}
