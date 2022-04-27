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
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                gradient:
                    LinearGradient(colors: [Colors.pinkAccent, Colors.yellow]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ]),
            child: const Text(
              "Learn as fast as i can",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
