import 'package:flutter/material.dart';
import '../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "MUSICX LAND!",
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize:  kStdHeadingFontSize+5.0),
        ),
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 10,
              child: Image(
                image: AssetImage('assets/images/front_page_logo.png'),
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}