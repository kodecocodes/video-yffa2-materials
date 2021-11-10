import 'package:flutter/material.dart';
import 'game_model.dart';

class Control extends StatefulWidget {
  const Control({Key? key, required this.model}) : super(key: key);

  final GameModel model;

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 90.0),
          child: Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.red[700],
              inactiveTrackColor: Colors.red[700],
              trackShape: const RoundedRectSliderTrackShape(),
              trackHeight: 8.0,
              thumbColor: Colors.redAccent,
              overlayColor: Colors.red.withAlpha(32),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
            ),
            child: Slider(
              value: widget.model.current.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  widget.model.current = newValue.toInt();
                });
              },
              min: 1.0,
              max: 100.0,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 90.0),
          child: Text('100', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
