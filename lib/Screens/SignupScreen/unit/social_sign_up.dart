import '../../../screens/SignupScreen/unit/social_icon.dart';
import '../../../screens/SignupScreen/unit/divider.dart';
import 'package:music_app_internship/music_app_main.dart';
import 'package:flutter/material.dart';



class SocalSignUp extends StatelessWidget {
  const SocalSignUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocalIcon(
              iconSrc: "assets/icons/facebook.svg",
              press: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return MyAppMusic(); }));
              },
            ),
            SocalIcon(
              iconSrc: "assets/icons/twitter.svg",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MyAppMusic();}));
              },
            ),
            SocalIcon(
              iconSrc: "assets/icons/google-plus.svg",
              press: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return MyAppMusic();}));
              },
            ),
          ],
        ),
      ],
    );
  }
}