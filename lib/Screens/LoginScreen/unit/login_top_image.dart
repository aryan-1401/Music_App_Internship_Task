import '../../../constants.dart';
import 'package:flutter/material.dart';


class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: kStdHeadingFontSize+5.0),
        ),
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image(
                image: AssetImage('assets/images/pngwing.com (2).png'),
              ),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}