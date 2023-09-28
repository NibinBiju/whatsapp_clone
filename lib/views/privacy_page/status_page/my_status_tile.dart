import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/views/privacy_page/status_page/tile_sub_text.dart';
import 'package:whatsapp_status_page/views/privacy_page/status_page/tile_text.dart';

class MyStatusTile extends StatelessWidget {
  MyStatusTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: ListTile(
        leading: Stack(
          children: [
            const CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage('assets/images/profile no2.jpeg'),
            ),
            Positioned(
              top: 28,
              left: 35,
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorsConstant.primaryColor,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        title: const TileText(text: 'My status'),
        subtitle: const TileSubText(subText: 'Tap to add status update'),
      ),
    );
  }
}
