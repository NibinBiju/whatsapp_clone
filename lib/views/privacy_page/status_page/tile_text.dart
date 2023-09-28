import 'package:flutter/material.dart';

class TileText extends StatelessWidget {
  const TileText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
    );
  }
}
