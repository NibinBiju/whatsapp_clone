import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/tile_sub_text.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/tile_text.dart';

class ViewedUpdates extends StatelessWidget {
  const ViewedUpdates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 16),
          child: Row(
            children: [
              Text(
                'Viewed updates',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: ListTile(
                    leading: DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.Circle,
                      radius: const Radius.circular(27),
                      // dashPattern: const [(2 * pi * 27) / 20],
                      strokeWidth: 3,
                      child: const CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/profile no2.jpeg'),
                        ),
                      ),
                    ),
                    title: const TileText(text: 'Mac'),
                    subtitle: const TileSubText(subText: 'Today 9.43 pm'),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
