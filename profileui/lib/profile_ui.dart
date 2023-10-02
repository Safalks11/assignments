import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileUi(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text("Profile"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/neymar_bg.jpg",
                width: 500,
                height: 600,
                alignment: Alignment.topCenter,
              ),
            ),
            const Positioned(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 308, left: 45),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.redAccent,
                      child: Icon(
                        Icons.message,
                        size: 23,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            const Positioned(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 260),
                  child: CircleAvatar(
                    radius: 73,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/neymar_profile.jpg"),
                      radius: 70,
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 308, right: 45),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Text(
                    "Neymar Junior",
                    style: GoogleFonts.inter(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Text(
                    "athlete / superstar",
                    style: GoogleFonts.roboto(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
