import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/database/db_model.dart';
import 'package:whatsapp_status_page/views/primary_page/primary_page.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/edit_floating_button.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/my_status_tile.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/new_status.dart';
import 'package:whatsapp_status_page/views/primary_page/status_page/viewed_updates.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorsConstant.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          onPressed: () {
            openCamera();
          },
          child: const Icon(
            Icons.camera_alt,
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //my status
                  MyStatusTile(),

                  //recent updates
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Recent updates',
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
                    height: MediaQuery.of(context).size.height * 2,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        if (index == recentStatusData.length) {
                          return ViewedUpdates();
                        }
                        return NewStatus(statusDb: recentStatusData[index]);
                      },
                      itemCount: recentStatusData.length + 1,
                    ),
                  ),

                  //viewed updates
                ],
              ),
            ),
            //edit floating button
            const EditFloatingButton()
          ],
        ));
  }
}
