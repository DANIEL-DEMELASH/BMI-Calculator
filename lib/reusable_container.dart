import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer(
      {required this.colour, required this.childWidget, required this.onPress});

  final Color colour;
  final Widget childWidget;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(15.0)),
        child: childWidget,
      ),
    );
  }
}
