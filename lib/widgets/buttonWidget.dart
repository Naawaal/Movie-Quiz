import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final color;
  final String text;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        textColor: Colors.white,
        minWidth: 200,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text),
      ),
    );
  }
}
