import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 275,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY="),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue[900],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blueAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue[700],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.github),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Jerin",
              style: GoogleFonts.aBeeZee(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "@webrror",
            style: GoogleFonts.aBeeZee(fontSize: 10),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "Mobile App Developer",
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
