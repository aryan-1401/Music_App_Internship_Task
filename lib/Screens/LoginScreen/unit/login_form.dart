import '../../../constants.dart';
import '../../SignupScreen/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../../components/existing_acc.dart';
import 'package:music_app_internship/music_app_main.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kLightPrimaryColor,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: "Enter Email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.email_outlined, color: kTextAndIcons,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kLightPrimaryColor,
              decoration: InputDecoration(
                hintText: "Enter password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock,color: kTextAndIcons,),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyAppMusic();
                },),);
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
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
