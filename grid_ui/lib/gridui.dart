import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridUi(),
  ));
}

class GridUi extends StatelessWidget {
  final List<IconData> icons = [
    Icons.account_circle,
    Icons.access_alarm,
    Icons.camera_alt,
    Icons.accessibility,
    Icons.accessibility_new,
    Icons.account_balance,
    Icons.account_balance_wallet,
    Icons.email,
    Icons.call,
    Icons.add_circle,
    Icons.event_note,
    Icons.mic_off,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 2.5),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(9.0),
              child: Card(
                color: Colors.primaries[index % Colors.primaries.length],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Icon(
                        icons[index % icons.length],
                        size: 40,
                      ),
                    ),
                    Text(
                      'Heart \nShaker',
                      style: GoogleFonts.roboto(fontSize: 20),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
