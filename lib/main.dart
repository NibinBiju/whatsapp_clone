import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/views/privacy_page/primary_page.dart';
import 'package:whatsapp_status_page/views/splash_screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
            unselectedLabelColor: Colors.grey.shade400,
            labelStyle: const TextStyle(fontSize: 14)),
        primaryColor: ColorsConstant.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
