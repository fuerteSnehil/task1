import 'package:demo/desktopBody.dart';
import 'package:demo/mobileBody.dart';
import 'package:demo/responsive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:ResponsiveLayout(mobileBody: MyMobileBody(), desktopBody: MyDesktopBody())
      ),
    );
  }
}
