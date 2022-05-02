import 'dart:convert';

import 'package:awsome_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //Functions here now

  // var myText = "This is a function";
  // TextEditingController _nameController = TextEditingController();

  var urls = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(urls));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(204, 238, 232, 232),
      appBar: AppBar(title: const Text("Welcome to Flutter App")),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.send),
      ),
    );
  }
}
