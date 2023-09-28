import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/views/privacy_page/status_page/tile_text.dart';

enum PrivacyOption {
  myContacts,
  myContactsExcept,
  onlySharewith,
}

class StatusPrivacy extends StatefulWidget {
  const StatusPrivacy({super.key});

  @override
  State<StatusPrivacy> createState() => _StatusPrivacyState();
}

class _StatusPrivacyState extends State<StatusPrivacy> {
  PrivacyOption? _option = PrivacyOption.myContacts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConstant.primaryColor,
        title: const Text(
          'Status privacy',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 8),
            child: Text(
              'Who can see my status updates',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'My contacts',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Transform.scale(
              scale: 1.3,
              child: Radio(
                activeColor: ColorsConstant.primaryColor,
                value: PrivacyOption.myContacts,
                groupValue: _option,
                onChanged: (value) {
                  setState(() {
                    _option = value;
                  });
                },
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'My contacts except...',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Transform.scale(
              scale: 1.4,
              child: Radio(
                activeColor: ColorsConstant.primaryColor,
                value: PrivacyOption.myContactsExcept,
                groupValue: _option,
                onChanged: (value) {
                  setState(() {
                    _option = value;
                  });
                },
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Only share with...',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Transform.scale(
              scale: 1.3,
              child: Radio(
                activeColor: ColorsConstant.primaryColor,
                value: PrivacyOption.onlySharewith,
                groupValue: _option,
                onChanged: (value) {
                  setState(() {
                    _option = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
