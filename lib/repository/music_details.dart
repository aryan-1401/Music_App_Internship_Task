import 'package:music_app_internship/constants.dart';
import 'dart:async';
import 'package:music_app_internship/api/provider.dart';
import 'package:music_app_internship/components/models/music_details.dart';


class MusicDetailsRepository {
  final int trackId;
  MusicDetailsRepository({this.trackId});
  ApiProvider _provider = ApiProvider();
  Future<MusicDetails> fetchMusicDetailsData() async {
    final response =
    await _provider.get("track.get?track_id=$trackId&apikey=$apikey");
    return MusicDetails.fromJson(response);
  }
}
