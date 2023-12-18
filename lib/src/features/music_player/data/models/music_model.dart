import 'package:music_player/src/features/music_player/data/models/artist_model.dart';

class MusicModel {
  final String title;
  final String path;
  final Duration duration;
  final ArtistModel artist;

  MusicModel({
    required this.title,
    required this.path,
    required this.artist,
    this.duration = Duration.zero,
  });

  MusicModel copyWith({
    Duration? duration,
  }) =>
      MusicModel(
        title: title,
        path: path,
        artist: artist,
        duration: duration ?? this.duration,
      );
}
