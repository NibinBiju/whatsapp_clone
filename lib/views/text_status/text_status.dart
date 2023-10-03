import 'package:flutter/material.dart';

class StatusText extends StatefulWidget {
  const StatusText({super.key});

  @override
  State<StatusText> createState() => _StatusTextState();
}

class _StatusTextState extends State<StatusText> {
  Color backgroundColors = Colors.green;

  bool hideText = true;
  List colors = [
    Colors.yellow.shade300,
    Colors.red.shade300,
    Colors.blue.shade300,
    Colors.deepPurple.shade300,
    Colors.teal.shade300,
  ];

  int currentindex = 0;

  void changeBackgroundColor() {
    setState(() {
      backgroundColors = colors[currentindex];
      currentindex = (currentindex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
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
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_rounded,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'T',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButton(
                        onPressed: () {
                          changeBackgroundColor();
                        },
                        icon: const Icon(
                          Icons.color_lens,
                          size: 30,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260, left: 30, right: 30),
            child: TextField(
              autofocus: true,
              onTap: () {
                setState(() {
                  hideText = !hideText;
                });
              },
              style: const TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),
              cursorHeight: 50,
              cursorWidth: 3,
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                hintText: 'Type a status',
                hintStyle: TextStyle(
                  fontSize: 32,
                  color: Colors.white24,
                ),
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/PngItem_1499104.png',
              height: 40,
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
