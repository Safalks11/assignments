import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridStack(),
  ));
}

class GridStack extends StatelessWidget {
  List<String> images = [
    "assets/images/domino-164_6wVEHfI-unsplash.jpg",
    "assets/images/imani-bahati-LxVxPA1LOVM-unsplash.jpg",
    "assets/images/kris-gerhard-0BKZfcamvGg-unsplash.jpg",
    "assets/images/luis-felipe-lins-LG88A2XgIXY-unsplash.jpg",
    "assets/images/paul-gaudriault-a-QH9MAAVNI-unsplash.jpg",
    "assets/images/the-dk-photography-NUoPWImmjCU-unsplash.jpg",
    "assets/images/usama-akram-kP6knT7tjn4-unsplash.jpg",
    "assets/images/usama-akram-s-gYAbQToXk-unsplash.jpg"
  ];
  var text = ["30\$", "80\$", "30\$", "80\$", "30\$", "80\$", "30\$", "80\$"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("GridView"),
      ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (BuildContext, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          text[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: 8,
        ),
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}
