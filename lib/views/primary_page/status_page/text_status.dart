import 'package:flutter/material.dart';

class StatusText extends StatelessWidget {
  const StatusText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_rounded,
                          color: Colors.white,
                          size: 30,
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'T',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.color_lens,
                          size: 30,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
