import 'package:flutter/material.dart';

import 'my_header_drawer.dart';

void main() {
  runApp(MaterialApp(
    home: AppDrawer2(),
  ));
}

class AppDrawer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Ui 2"),
      ),
      drawer: Drawer(
        child: Column(
          children: [MyHeaderDrawer(), MyDrawerList()],
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 15),
            child: ListTile(
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: ListTile(
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              leading: Icon(Icons.history),
              title: Text("Purchase History"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: ListTile(
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              leading: Icon(Icons.help),
              title: Text("Help & Support"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: ListTile(
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: ListTile(
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              leading: Icon(Icons.add_reaction),
              title: Text("Invite a friend"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ListTile(
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
