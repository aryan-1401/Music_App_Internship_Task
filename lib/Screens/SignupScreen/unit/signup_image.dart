import 'package:flutter/material.dart';
import '../../../constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
