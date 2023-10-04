import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';

class CallInfo extends StatelessWidget {
  const CallInfo(
      {super.key,
      required this.image,
      required this.name,
      required this.icon,
      required this.callcategory,
      required this.time,
      required this.date,
      required this.talkTime});

  final String image;
  final String name;
  final Icon icon;
  final String callcategory;
  final String time;
  final String date;
  final String talkTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConstant.primaryColor,
        elevation: 0,
        title: const Text(
          'Call info',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: const [
          Icon(
            Icons.message,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert_rounded,
            size: 28,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(image),
            ),
            title: Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.call,
                  color: ColorsConstant.primaryColor,
                  size: 32,
                ),
                const SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.video_call,
                  color: ColorsConstant.primaryColor,
                  size: 32,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(
                  thickness: 2,
                ),
                Text(date)
              ],
            ),
          ),
          ListTile(
            leading: icon,
            title: Text(
              callcategory,
              style: const TextStyle(
                fontSize: 21,
              ),
            ),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.call,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
            trailing: Text(
              talkTime,
              style: const TextStyle(
                fontSize: 19,
              ),
            ),
          )
        ],
      ),
    );
  }
}
