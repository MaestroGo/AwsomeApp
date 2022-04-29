import 'package:flutter/material.dart';

void main() {
//MaterialApp
  runApp(MaterialApp(
    home: const Homepage(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //Functions here now

  var myText = "Change  my Name Now";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(title: const Text("Welcome to Flutter App")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/gal.jpg",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter some text",
                          labelText: "Name"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Maestro Efe"),
                accountEmail: Text("goonlinenaija@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1557697212-5c1433f9e64c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Maestro G"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("goonlinenaija@gmail.com"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.selection;
          setState(() {});
        },
        child: const Icon(Icons.send),
      ),
    );
  }
}
