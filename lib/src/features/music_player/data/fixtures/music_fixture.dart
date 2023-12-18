import 'package:music_player/src/config/constants/constants.dart';
import 'package:music_player/src/features/music_player/data/models/artist_model.dart';
import 'package:music_player/src/features/music_player/data/models/music_model.dart';

const _prefixMusicPath = AssetsConstants.prefixMusicPath;
const _prefixImagesPath = AssetsConstants.prefixImagesPath;

class MusicFixture {
  MusicFixture._();

  static List<MusicModel> get sampleMusic => [
        MusicModel(
          title: 'Beethoven',
          path: '$_prefixMusicPath/beethoven.mp3',
          artist: ArtistModel(
            name: 'beethoven',
            image: '$_prefixImagesPath/beethoven.jpeg',
            coverImage: '$_prefixImagesPath/beethoven.jpeg',
          ),
        ),
        MusicModel(
          title: 'Finally found you',
          path: '$_prefixMusicPath/finally_found_you.mp3',
          artist: ArtistModel(
            name: 'enrique iglesias',
            image: '$_prefixImagesPath/enrique_iglesias.png',
            coverImage: '$_prefixImagesPath/enrique_cover.png',
          ),
        ),
      ];
}
