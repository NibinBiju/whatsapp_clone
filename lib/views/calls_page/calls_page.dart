import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/views/calls_page/call_info/call_info.dart';

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
              radius: 25,
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
                    color: Color.fromARGB(255, 99, 97, 97),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //contact 1
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return CallInfo(
                    image: 'assets/images/profile no1.jpeg',
                    name: 'John',
                    icon: Icon(
                      Icons.call_made,
                      color: ColorsConstant.primaryColor,
                      size: 27,
                    ),
                    callcategory: 'Incoming',
                    time: '11:37 pm',
                    date: '30 September',
                    talkTime: '1:04',
                  );
                },
              ));
            },
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile no1.jpeg'),
                radius: 25,
              ),
              title: const Text(
                'John',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call_made,
                    color: ColorsConstant.primaryColor,
                    size: 17,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text('30 September,11:37 pm')
                ],
              ),
              trailing: Icon(
                Icons.video_call,
                color: ColorsConstant.primaryColor,
                size: 32,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          //conatct 2
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const CallInfo(
                    image: 'assets/images/profile no3.jpeg',
                    name: 'Angel',
                    icon: Icon(
                      Icons.call_received_outlined,
                      color: Colors.red,
                      size: 27,
                    ),
                    callcategory: 'Outgoing',
                    time: '3:04 pm',
                    date: '26 September',
                    talkTime: '',
                  );
                },
              ));
            },
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile no3.jpeg'),
                radius: 25,
              ),
              title: const Text(
                'Angel',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call_received_outlined,
                    color: Colors.red,
                    size: 17,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '26 September,3:04 pm',
                  )
                ],
              ),
              trailing: Icon(
                Icons.call,
                color: ColorsConstant.primaryColor,
                size: 32,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: ColorsConstant.primaryColor,
          onPressed: () {},
          child: const Icon(
            Icons.call,
            color: Colors.white,
          )),
    );
  }
}
