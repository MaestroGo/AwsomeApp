import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Maestro Efe"),
              accountEmail: Text("goonlinenaija@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/gal.jpg"),
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
    );
  }
}
