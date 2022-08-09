import 'dart:async';
import 'package:music_app_internship/api/response.dart';
import 'package:music_app_internship/repository/music_details.dart';
import 'package:music_app_internship/components/models/music_details.dart';

class MusicDetailsBloc {
  MusicDetailsRepository _musicDetailsRepository;
  StreamController _musicDetailsController;
  int trackId;
  StreamSink<Response<MusicDetails>> get musicDetailsSink =>
      _musicDetailsController.sink;

  Stream<Response<MusicDetails>> get musicDetailsStream =>
      _musicDetailsController.stream;

  MusicDetailsBloc({this.trackId}) {
    _musicDetailsController =
    StreamController<Response<MusicDetails>>.broadcast();
    _musicDetailsRepository = MusicDetailsRepository(trackId: trackId);
    fetchMusicDetails();
  }
  fetchMusicDetails() async {
    musicDetailsSink.add(Response.loading('Loading All Details.. '));
    try {
      MusicDetails musicDetails =
      await _musicDetailsRepository.fetchMusicDetailsData();
      musicDetailsSink.add(Response.completed(musicDetails));
    } catch (e) {
      musicDetailsSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _musicDetailsController?.close();
  }
}
