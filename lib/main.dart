import 'package:alathariahstudeint/models/informatins.dart';
import 'package:alathariahstudeint/screen/homepage.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: background,
      ),
      home: const HomePage(),
    );
  }
}
