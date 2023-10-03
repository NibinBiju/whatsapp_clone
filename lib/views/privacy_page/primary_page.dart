import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/views/calls_page/calls_page.dart';
import 'package:whatsapp_status_page/views/privacy_page/home/home.dart';
import 'package:whatsapp_status_page/views/privacy_page/status_page/status_page.dart';
import 'package:whatsapp_status_page/views/status_privacy/status_privacy.dart';

class PrimaryPage extends StatelessWidget {
  PrimaryPage({super.key});

  static ValueNotifier<int> selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsConstant.primaryColor,
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: ColorsConstant.textColor,
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                openCamera();
              },
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 27,
                color: ColorsConstant.textColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 27,
                color: ColorsConstant.textColor,
              ),
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const StatusPrivacy();
                      },
                    ));
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  value: 'status privacy',
                  child: const Text('Status privacy'),
                ),
                const PopupMenuItem(
                  value: 'settings',
                  child: Text('Settings'),
                )
              ],
            )
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            Material(
              color: ColorsConstant.primaryColor,
              child: TabBar(
                labelColor: Colors.white,
                indicatorColor: ColorsConstant.primaryColor,
                tabs: const [
                  //chats
                  Tab(
                    text: 'Chats',
                  ),

                  //status
                  Tab(
                    text: 'Status',
                  ),

                  //calls
                  Tab(
                    text: 'Calls',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(children: [
                Home(),
                StatusPage(),
                CallsPage(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> openCamera() async {
  await ImagePicker().pickImage(source: ImageSource.camera);
}
