import 'package:flutter/material.dart';
import 'text_styles.dart';
import 'styled_button.dart';
import 'about.dart';

class Score extends StatelessWidget {
  const Score(
      {Key? key,
      required this.totalScore,
      required this.round,
      required this.onStartOver})
      : super(key: key);

  final int totalScore;
  final int round;
  final VoidCallback onStartOver;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StyledButton(
          icon: Icons.refresh,
          onPressed: () {
            onStartOver();
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0),
            child: Column(
              children: <Widget>[
                Text('Score: ', style: LabelTextStyle.bodyText1(context)),
                Text('$totalScore',
                    style: ScoreNumberTextStyle.headline4(context)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
          child: Column(
            children: <Widget>[
              Text('Round: ', style: LabelTextStyle.bodyText1(context)),
              Text('$round', style: ScoreNumberTextStyle.headline4(context)),
            ],
          ),
        ),
        StyledButton(
          icon: Icons.info,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutPage()),
            );
          },
        )
      ],
    );
  }
}
