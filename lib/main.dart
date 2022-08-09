
import 'package:music_app_internship/constants.dart';
import 'package:music_app_internship/Screens/WelcomeScreen/welcome_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: kDarkPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kLightPrimaryColor,
            iconColor: kLightPrimaryColor,
            prefixIconColor: kLightPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      home: const WelcomeScreen(),
    );
  }
}
