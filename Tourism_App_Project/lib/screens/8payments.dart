import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BookingPage extends StatelessWidget {
  BookingPage({super.key});
  final List<String> paymentMethods = [
    "Google Pay",
    "Paypal",
    "Credit Card",
  ];
  var animations = [
    "https://lottie.host/654024d9-7ef3-4f4e-8eb8-d7dfb4cc6c08/mTcAIeCrzl.json",
    "https://lottie.host/b554c898-cfdd-4445-aba2-499c088f100e/mSs36lfYc0.json",
    "https://lottie.host/dde36fcd-b140-4030-88cf-1903aaf2b28f/8qOdBvXcaV.json"
  ];
  var icons = [
    FaIcon(FontAwesomeIcons.googlePay, size: 30),
    FaIcon(FontAwesomeIcons.paypal, size: 30),
    FaIcon(FontAwesomeIcons.creditCard, size: 25)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Payment"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.orange[800]),
                  ),
                  Positioned(
                    top: 80,
                    left: 30,
                    child: Row(
                      children: [
                        Transform.rotate(
                          angle: 90 * pi / 180,
                          child: const Icon(
                            Icons.sim_card_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Transform.rotate(
                          angle: 90 * pi / 180,
                          child: const Icon(
                            Icons.wifi,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 30,
                    child: Text(
                      "8272827-8292878",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 16, color: Colors.white70),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 15,
                    child: Text(
                      "VISA",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: 120,
                    right: 18,
                    child: Text(
                      "Wallet Balance",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: 95,
                    right: 18,
                    child: Text(
                      "\$568.45/-",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 40,
                    child: GradientText(
                      "FI",
                      style: GoogleFonts.fahkwang(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      colors: const [
                        Colors.black12,
                        Colors.white,
                        Colors.white70
                      ],
                      stops: const [0, .3, 1],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Payment Methods",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: paymentMethods.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.grey,
                      child: icons[index]), // You can change the icon as needed
                  title: Text(
                    paymentMethods[index],
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: SizedBox(
                              width: 200,
                              height: 200,
                              child: Lottie.network(
                                animations[index],
                                repeat: false,
                                reverse: false,
                                animate: true,
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("Pay Now"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.green[700]),
                    ),
                  ),
                );
              },
            ),
            Divider(
              thickness: 1.1,
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Pay with UPI id",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              height: 65,
              child: TextField(
                decoration: InputDecoration(
                    helperText: "Enter your UPI id",
                    border: OutlineInputBorder()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
