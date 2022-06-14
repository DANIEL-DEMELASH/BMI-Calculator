import 'package:flutter/material.dart';
import '../screens/InputPage.dart';

enum weightP { plus, minus }

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icons, required this.onPressed});

  final IconData icons;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icons),
      shape: CircleBorder(),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
