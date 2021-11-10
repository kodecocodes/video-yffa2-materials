import 'package:flutter/material.dart';

class HitMeButton extends StatelessWidget {
  const HitMeButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.red[700],
      splashColor: Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          text,
          maxLines: 1,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0),
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(color: Colors.white),
      ),
    );
  }
}
