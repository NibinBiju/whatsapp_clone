import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 29,
              backgroundColor: ColorsConstant.primaryColor,
              child: const Center(
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
            title: const Text(
              'Create call link',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text(
              'Share a link for your WhatsApp call',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                Text(
                  'Recent',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
