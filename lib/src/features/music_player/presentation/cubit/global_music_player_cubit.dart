import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/src/core/extensions/app_extensions.dart';
import 'package:music_player/src/features/music_player/data/fixtures/music_fixture.dart';
import 'package:music_player/src/features/music_player/data/models/music_model.dart';
import 'package:music_player/src/features/music_player/presentation/cubit/global_music_player_state.dart';

@injectable
class GlobalMusicPlayerCubit extends Cubit<GlobalMusicPlayerState> {
  GlobalMusicPlayerCubit() : super(const GlobalMusicPlayerState.initial());

  // ******************** local variables  ********************
  final List<MusicModel> _musics = MusicFixture.sampleMusic;
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _currentPlayingMusicPath;
  String? _pausedPlayingMusicPath;

// ******************** Getters ********************
  List<MusicModel> get musics => _musics;

  MusicModel? get currentPlayingMusic => _musics
      .firstWhereOrNull((music) => music.path == _currentPlayingMusicPath);

  MusicModel? get currentPausedMusic => _musics
      .firstWhereOrNull((music) => music.path == _pausedPlayingMusicPath);

  MusicModel? get currentPlayingPausedMusic =>
      currentPlayingMusic ?? currentPausedMusic;

  String? get currentPlayingArtistImagePath =>
      currentPlayingPausedMusic?.artist.image;

  Stream<Duration> get currentPlayingPosition => _audioPlayer.positionStream;

// ******************** Logic ********************
  bool isPlaying(String musicPath) => musicPath == _currentPlayingMusicPath;

  bool isPausedPlaying(String musicPath) =>
      musicPath == _pausedPlayingMusicPath;

  bool get showPlayingMusicOverLay =>
      currentPlayingMusic != null || currentPausedMusic != null;

  // ******************** Configures ********************
  Future<void> setMusicsDurations() async {
    try {
      for (int i = 0; i < _musics.length; i++) {
        _musics[i] = _musics[i]
            .copyWith(duration: await _audioPlayer.setAsset(_musics[i].path));
      }
      emit(const GlobalMusicPlayerState.configMusicsDurations());
    } catch (_) {}
  }

// ******************** Events ********************

  void playPauseMusic(String musicPath) => isPlaying(musicPath)
      ? _pauseMusic()
      : isPausedPlaying(musicPath)
          ? _resumeMusic()
          : _playMusic(musicPath);

  void _playMusic(String musicPath) {
    try {
      _audioPlayer.setAsset(musicPath);
      _audioPlayer.play();
      _currentPlayingMusicPath = musicPath;
      emit(GlobalMusicPlayerState.playing(_currentPlayingMusicPath.orEmpty));
    } catch (_) {}
  }

  void _pauseMusic() {
    try {
      _audioPlayer.pause();
      _pausedPlayingMusicPath = _currentPlayingMusicPath;
      _currentPlayingMusicPath = null;
      emit(const GlobalMusicPlayerState.paused());
    } catch (_) {}
  }

  void _resumeMusic() {
    try {
      _audioPlayer.play();
      _currentPlayingMusicPath = _pausedPlayingMusicPath;
      _pausedPlayingMusicPath = null;
      emit(GlobalMusicPlayerState.playing(_currentPlayingMusicPath.orEmpty));
    } catch (_) {}
  }

  void _stopMusic() async {
    try {
      _audioPlayer.stop();
      _currentPlayingMusicPath = null;
      emit(const GlobalMusicPlayerState.stopped());
    } catch (_) {}
  }

  @override
  Future<void> close() async {
    try {
      _audioPlayer.dispose();
    } catch (_) {}
    return super.close();
  }
}
