import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/filePicker.dart';
import 'package:lungsound_detectorapp/home.dart';
import 'package:lungsound_detectorapp/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Landing(),
    );
  }
}
