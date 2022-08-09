import 'package:music_app_internship/constants.dart';
import 'package:music_app_internship/api/provider.dart';
import 'dart:async';
import 'package:music_app_internship/components/models/music_list.dart';

class MusicListRepository {
  ApiProvider _provider = ApiProvider();
  Future<MusicList> fetchMusicListData() async {
    final response = await _provider.get("chart.tracks.get?apikey=$apikey");
    return MusicList.fromJson(response);
  }
}
