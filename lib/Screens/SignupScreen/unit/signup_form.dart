import 'package:music_app_internship/Screens/SignupScreen/unit/social_sign_up.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../components/existing_acc.dart';
import '../../LoginScreen/login_screen.dart';
import 'package:music_app_internship/music_app_main.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            obscureText: false,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Enter Username",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person, color: kTextAndIcons,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Enter Email",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.email_outlined, color: kTextAndIcons,),
                ),
              ),
            ),
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            obscureText: true,
            cursorColor: kPrimaryColor,
            onSaved: (password) {},
            decoration: InputDecoration(
              hintText: "Set Password",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.lock, color: kTextAndIcons,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock, color: kTextAndIcons,),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyAppMusic();
              },),);
            },
            child: Text("Sign Up".toUpperCase()),
          ),
          SocalSignUp(),
          const SizedBox(height: defaultPadding / 2),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}