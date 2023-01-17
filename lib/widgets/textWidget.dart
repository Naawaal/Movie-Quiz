import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blueGrey[700],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),
      ),
    );
  }
}
