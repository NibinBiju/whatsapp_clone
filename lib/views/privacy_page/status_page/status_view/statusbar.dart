// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/views/privacy_page/status_page/status_view/status_progress_bar.dart';

class Statusbar extends StatelessWidget {
  Statusbar({super.key, required this.percentWatch});

  List<double> percentWatch = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28),
      child: Row(
        children: [
          Expanded(
            child: StatusProgressBar(percentWatched: percentWatch[0]),
          ),
          Expanded(
            child: StatusProgressBar(percentWatched: percentWatch[1]),
          ),
          Expanded(
            child: StatusProgressBar(percentWatched: percentWatch[2]),
          ),
        ],
      ),
    );
  }
}
