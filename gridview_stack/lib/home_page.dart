import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView_Stack(),
  ));
}

class GridView_Stack extends StatelessWidget {
  var images = [
    "https://images.unsplash.com/photo-1485738422979-f5c462d49f74?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNhfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1556905200-279565513a2d?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.pexels.com/photos/11426092/pexels-photo-11426092.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/15835314/pexels-photo-15835314/free-photo-of-people-are-covered-in-colored-powder-and-are-walking.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];
  var names = ["USA", "CANADA", "BRAZIL", "INDIA"];

  GridView_Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Stack"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 6, mainAxisSpacing: 6),
            itemCount: images.length,
            itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            images[index],
                          ))),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 20,
                        left: 15,
                        child: Text(
                          names[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
