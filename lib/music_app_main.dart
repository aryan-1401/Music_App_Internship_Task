import 'package:music_app_internship/Screens/Interface/music_list.dart';
import 'package:flutter/material.dart';
import 'package:music_app_internship/constants.dart';
void main() {
  runApp(MyAppMusic());
}

class MyAppMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      title: 'Music App',
      home:GetMusicList(),
    );
  }
}
