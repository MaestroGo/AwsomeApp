import 'package:awsome_app/Pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
//MaterialApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
