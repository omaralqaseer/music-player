import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_music_player_state.freezed.dart';

@freezed
abstract class GlobalMusicPlayerState with _$GlobalMusicPlayerState {
  const factory GlobalMusicPlayerState.initial() = _Initial;
  const factory GlobalMusicPlayerState.configMusicsDurations() =
      _ConfigMusicsDurations;
  const factory GlobalMusicPlayerState.playing(String musicPath) = _Playing;
  const factory GlobalMusicPlayerState.paused() = _Paused;
  const factory GlobalMusicPlayerState.stopped() = _Stopped;
}
