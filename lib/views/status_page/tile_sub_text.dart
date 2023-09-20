import 'package:flutter/material.dart';

class TileSubText extends StatelessWidget {
  const TileSubText({
    super.key,
    required this.subText,
  });

  final String subText;

  @override
  Widget build(BuildContext context) {
    return Text(
      subText,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17,
      ),
    );
  }
}
