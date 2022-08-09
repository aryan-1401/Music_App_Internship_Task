import 'package:music_app_internship/constants.dart';
import 'package:music_app_internship/components/models/music_lyrics.dart';
import 'package:music_app_internship/api/provider.dart';
import 'dart:async';

class MusicLyricsRepository {
  final int trackId;
  MusicLyricsRepository({this.trackId});
  ApiProvider _provider = ApiProvider();
  Future<MusicLyrics> fetchMusicDetailsData() async {
    final response = await _provider
        .get("track.lyrics.get?track_id=$trackId&apikey=$apikey");
    return MusicLyrics.fromJson(response);
  }
}
