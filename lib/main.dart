import 'package:flutter/material.dart';

void main() {
//MaterialApp
  runApp(MaterialApp(
    home: const Homepage(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Welcome to Flutter App")),
        body: Container(
          child: Text("Now we are even"),
        ));
  }
}
