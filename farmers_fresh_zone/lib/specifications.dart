import 'package:flutter/material.dart';

class Specifications extends StatelessWidget {
  const Specifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(width: .5, color: Colors.green),
          ),
          height: 70,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 9, bottom: 7),
                    child: Icon(
                      Icons.timer,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '30 MINS POLICY',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 9, bottom: 7),
                    child: Icon(
                      Icons.camera_front_outlined,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'TRACEABILITY',
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 9, bottom: 7),
                    child: Icon(
                      Icons.local_grocery_store_outlined,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'LOCAL SOURCING',
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
