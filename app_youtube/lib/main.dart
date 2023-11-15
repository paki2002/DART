import 'package:flutter/material.dart';
import 'package:flutter/app_youtube/pages/init_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "YouTube",
      debugShowCheckedModeBanner: false, 
      home: InitPage(),
    );
  }
}
