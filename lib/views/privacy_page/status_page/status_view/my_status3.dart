import 'package:flutter/material.dart';

class MyStatus3 extends StatelessWidget {
  const MyStatus3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              'https://i.pinimg.com/236x/3d/71/55/3d7155ba28732516672822e557cba15f.jpg',
              fit: BoxFit.cover,
            ),
          ),
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
                        backgroundImage:
                            AssetImage('assets/images/profile no3.jpeg'),
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
