import 'dart:async';
import 'package:music_app_internship/api/response.dart';
import 'package:music_app_internship/repository/music_list.dart';
import 'package:music_app_internship/components/models/music_list.dart';

class MusicListBloc {
  MusicListRepository _musicListRepository;
  StreamController _musicListController;

  Stream<Response<MusicList>> get musicListStream =>
      _musicListController.stream;

  StreamSink<Response<MusicList>> get musicListSink =>
      _musicListController.sink;

  MusicListBloc() {
    _musicListController = StreamController<Response<MusicList>>.broadcast();
    _musicListRepository = MusicListRepository();
    fetchMusicList();
  }

  fetchMusicList() async {
    musicListSink.add(Response.loading('Loading Song list. '));
    try {
      MusicList musicList = await _musicListRepository.fetchMusicListData();
      musicListSink.add(Response.completed(musicList));
    } catch (e) {
      musicListSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _musicListController?.close();
  }
}
