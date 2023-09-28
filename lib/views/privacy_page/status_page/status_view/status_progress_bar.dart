// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StatusProgressBar extends StatelessWidget {
  StatusProgressBar({super.key, required this.percentWatched});
  double percentWatched = 0;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      barRadius: Radius.circular(7),
      curve: Curves.bounceIn,
      lineHeight: 13,
      percent: percentWatched,
      progressColor: Colors.grey[400],
      backgroundColor: Colors.grey[600],
    );
  }
}
