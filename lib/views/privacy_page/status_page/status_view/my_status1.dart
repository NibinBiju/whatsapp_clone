import 'package:flutter/material.dart';

class MyStatus1 extends StatelessWidget {
  const MyStatus1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Container(
              color: Colors.black,
              height: 130,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 38),
                child: ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      const CircleAvatar(
                        radius: 30,
                      ),
                    ],
                  ),
                  title: const Text(
                    'name',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Today 8:43 pm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}