import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView3(),
  ));
}

class ListView3 extends StatelessWidget {
  var title = [
    'Abhishek',
    'Arjun',
    'Ajnas',
    'Basheer',
    'Salih',
    'Shamsa',
    'Noor Fathima',
    'Asif',
    'Abhishek',
    'Arjun',
  ];
  var subti = [
    9867895678,
    8289655688,
    6282197682,
    9876878709,
    8856767576,
    9162736388,
    8281895472,
    9282723456,
    9867895678,
    8289655688,
  ];
  // var icons = [
  //   Icons.account_circle,
  //   Icons.account_circle,
  //   Icons.account_circle,
  //   Icons.account_circle,
  //   Icons.account_circle,
  //   Icons.account_circle,
  //   Icons.account_circle,
  //   Icons.account_circle,
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
      ),
      body: ListView(
        children: List.generate(
          10,
          (index) => Card(
            child: ListTile(
              title: Text(title[index]),
              subtitle: Text('${subti[index]}'),
              leading: Icon(
                Icons.account_circle,
                color: Colors.primaries[index % Colors.primaries.length],
                size: 40,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
