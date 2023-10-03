import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/views/privacy_page/primary_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return PrimaryPage();
        },
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 60,
            height: 60,
            child: Image.asset('assets/images/pngwing.com.png'),
          ),
        )
      ],
    ));
  }
}
