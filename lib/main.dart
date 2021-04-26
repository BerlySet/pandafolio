import 'package:flutter/material.dart';
import 'UI/about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PandaFolio',
      home: AboutPage(),
    );
  }
}