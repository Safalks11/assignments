import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBar1 extends StatefulWidget {
  @override
  State<AppBar1> createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 40,
      title: Text(
        'FARMERS FRESH ZONE',
        style: GoogleFonts.lilitaOne(),
      ),
      actions: const [
        Icon(
          Icons.location_on_outlined,
          size: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Center(child: Text('Kochi')),
        ),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.keyboard_arrow_down,
            size: 15,
          ),
        )
      ],
      bottom: AppBar(
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.white),
          height: 35,
          width: double.infinity,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for Vegetables, Fruits...',
                hintStyle: GoogleFonts.notoSans(fontSize: 12),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 18,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                isDense: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
