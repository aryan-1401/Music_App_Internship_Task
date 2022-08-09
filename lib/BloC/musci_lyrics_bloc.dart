import 'dart:async';
import 'package:music_app_internship/api/response.dart';
import 'package:music_app_internship/repository/music_lyrics.dart';
import 'package:music_app_internship/components/models/music_lyrics.dart';
import 'package:flutter/cupertino.dart';

class MusicLyricsBloc {
  MusicLyricsRepository _musicLyricsRepository;
  StreamController _musicLyricsController;
  int trackId;
  StreamSink<Response<MusicLyrics>> get musicLyricsSink =>
      _musicLyricsController.sink;

  Stream<Response<MusicLyrics>> get musicLyricsStream =>
      _musicLyricsController.stream;

  MusicLyricsBloc({@required this.trackId}) {
    _musicLyricsController =
    StreamController<Response<MusicLyrics>>.broadcast();
    _musicLyricsRepository = MusicLyricsRepository(trackId: trackId);
    fetchMusicLyrics();
  }
  fetchMusicLyrics() async {
    musicLyricsSink.add(Response.loading('Loading song lyrics'));
    try {
      MusicLyrics musicLyrics =
      await _musicLyricsRepository.fetchMusicDetailsData();
      musicLyricsSink.add(Response.completed(musicLyrics));
    } catch (e) {
      musicLyricsSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _musicLyricsController?.close();
  }
}
