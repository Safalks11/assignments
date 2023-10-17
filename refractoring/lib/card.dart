import 'package:flutter/material.dart';

class Custom_Card1 extends StatelessWidget {
  AssetImage? image;
  String? text;
  String? price;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(image: image!),
          Text(text!),Icon(Icons.favorite_border),
          Row(
            children: [
              Text(price!),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_border),
            ],
          )
        ],
      ),
    );
  }
}
