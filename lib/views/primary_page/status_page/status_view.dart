import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/status_view/my_status1.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/status_view/my_status2.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/status_view/my_status3.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/status_view/statusbar.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  int currentStatusIndex = 0;
  final List myStatus = [
    const MyStatus1(),
    const MyStatus2(),
    const MyStatus3(),
  ];

  List<double> percentWatched = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < myStatus.length; i++) {
      percentWatched.add(0);
    }
    _startWatching();
  }

  void _startWatching() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (percentWatched[currentStatusIndex] + 0.01 < 1) {
          percentWatched[currentStatusIndex] += 0.01;
        } else {
          percentWatched[currentStatusIndex] = 1;
          timer.cancel();

          if (currentStatusIndex < myStatus.length) {
            currentStatusIndex++;
            _startWatching();
          } else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  void _onTapDown(TapDownDetails details) {
    // final double screenwidth=MediaQuery(data: data, child: child)
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      child: Scaffold(
        body: Stack(
          children: [
            myStatus[currentStatusIndex],
            Statusbar(
              percentWatch: percentWatched,
            ),
          ],
        ),
      ),
    );
  }
}
