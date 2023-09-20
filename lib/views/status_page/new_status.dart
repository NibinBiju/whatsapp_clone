import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/database/db_model.dart';
import 'package:whatsapp_status_page/views/status_page/tile_sub_text.dart';
import 'package:whatsapp_status_page/views/status_page/tile_text.dart';

class NewStatus extends StatelessWidget {
  const NewStatus({
    super.key,
    required this.statusDb,
  });

  final StatusDb statusDb;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13),
      child: ListTile(
        leading: DottedBorder(
          color: ColorsConstant.primaryColor,
          borderType: BorderType.Circle,
          radius: const Radius.circular(27),
          dashPattern: const [(2 * pi * 27) / 20],
          strokeWidth: 3,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(statusDb.imagepath),
            ),
          ),
        ),
        title: TileText(text: statusDb.name),
        subtitle: TileSubText(subText: statusDb.time),
      ),
    );
  }
}
