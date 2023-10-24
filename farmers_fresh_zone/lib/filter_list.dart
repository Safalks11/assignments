import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      const SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 85,
                child: Center(
                  child: Text(
                    'OFFERS',
                    style: GoogleFonts.raleway(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 120,
                child: Center(
                  child: Text(
                    'VEGETABLES',
                    style: GoogleFonts.raleway(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 85,
                child: Center(
                  child: Text(
                    'FRUITS',
                    style: GoogleFonts.raleway(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 85,
                child: Center(
                  child: Text(
                    'EXOTIC',
                    style: GoogleFonts.raleway(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 120,
                child: Center(
                  child: Text(
                    'FRESH CUTS',
                    style: GoogleFonts.raleway(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 160,
                child: Center(
                  child: Text(
                    'PACKED FLAVOURS',
                    style: GoogleFonts.raleway(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 180,
                child: Center(
                  child: Text(
                    'NUTRITION CHARGERS',
                    style: GoogleFonts.raleway(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
