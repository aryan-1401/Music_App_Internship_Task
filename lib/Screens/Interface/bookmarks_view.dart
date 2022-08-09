import 'package:music_app_internship/Screens/Interface/music_list.dart';
import 'package:flutter/material.dart';
import 'package:music_app_internship/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:music_app_internship/components/models/music_list.dart' as ListTrack;

class BookmarkView extends StatefulWidget {
  @override
  _BookmarkViewState createState() => _BookmarkViewState();
}

class _BookmarkViewState extends State<BookmarkView> {
  List<String> trackIdList;
  List<String> trackNameList;
  List<String> trackAlbumList;
  List<String> trackArtistList;
  @override
  void initState() {
    super.initState();
  }

  void sharedPref() async {
    final perfs = await SharedPreferences.getInstance();
    setState(() {
      trackIdList = perfs.getStringList('bookmarkList');
      trackNameList = perfs.getStringList('nameList');
      trackAlbumList = perfs.getStringList('albumList');
      trackAlbumList = perfs.getStringList('artistList');
    });
  }

  @override
  Widget build(BuildContext context) {
    sharedPref();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kSecondaryTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Bookmarks',
          style: TextStyle(color: kSecondaryTextColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: kDarkPrimaryColor,
      body: (trackIdList == null || trackIdList.length == 0)
          ? Center(
        child: Text(
          'No bookmarks added',
          style: TextStyle(color: kSecondaryTextColor, fontSize: kDefaultFontSize),
        ),
      )
          : listViewBuilder(),
    );
  }

  listViewBuilder() {
    return ListView.builder(
        itemBuilder: (context, index) {
          ListTrack.Track track = ListTrack.Track();
          track.trackId = int.parse(trackIdList[index]);
          track.trackName = trackNameList[index];
          track.albumName = trackAlbumList[index];
          track.artistName = trackAlbumList[index];
          return TrackTile(
            track: track,
          );
        },
        itemCount: trackIdList.length);
  }
}