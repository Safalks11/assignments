import 'package:farmers_fresh_zone/blog_list.dart';
import 'package:farmers_fresh_zone/bottom_bar.dart';
import 'package:farmers_fresh_zone/carousel_slider.dart';
import 'package:farmers_fresh_zone/filter_list.dart';
import 'package:farmers_fresh_zone/item_grid.dart';
import 'package:farmers_fresh_zone/items_list.dart';
import 'package:farmers_fresh_zone/specifications.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: CustomScrollView(
        slivers: [
          AppBar1(),
          Filter_List(),
          Carousel_Slider(),
          const Specifications(),
          Items_Grid(),
          const ItemsList(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                height: 175,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://scontent-del1-1.xx.fbcdn.net/v/t39.30808-6/307761645_6391297474255359_5335873721092751390_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=cSTV4dQQPusAX_EwIuM&_nc_ht=scontent-del1-1.xx&oh=00_AfAHN33jvP2brYNZ1nVDlaOtV-y9A_9aQ0P8AzQah5mnLw&oe=653CF75F'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          BlogList(),
          SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: const BoxDecoration(color: Colors.green),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Copyright @ 2023 Farmers Fresh Zone UI clone. All Rights Reserved. ',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    'Safalks',
                    style: TextStyle(
                      letterSpacing: .8,
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
