import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget {
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 40,
      title: Text(
        'FARMERS FRESH ZONE',
        style: GoogleFonts.lilitaOne(),
      ),
      actions: [
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text('Kochi'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 15,
              ),
            ),
          ],
        ),
      ],
      bottom: AppBar(
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.white,
          ),
          height: 35,
          width: double.infinity,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for Vegetables, Fruits...',
                hintStyle: GoogleFonts.notoSans(fontSize: 12),
                prefixIcon: Icon(
                  Icons.search,
                  size: 18,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                isDense: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
