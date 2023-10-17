import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Products_Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Products_Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Recomended'),
        leading: Icon(
          Icons.arrow_circle_left_rounded,
          size: 30,
        ),
        backgroundColor: Colors.grey[800],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.sort),
          )
        ],
      ),
      backgroundColor: Colors.grey[800],
      body: ,
    );
  }
}
