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
        color: Colors.blueGrey,
        height: 500,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.green,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
