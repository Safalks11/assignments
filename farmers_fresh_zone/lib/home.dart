import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'blog_list.dart';
import 'bottom_bar.dart';
import 'carousel_slider.dart';
import 'filter_list.dart';
import 'item_grid.dart';
import 'items_list.dart';
import 'specifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          CustomAppBar(),
          FilterList(),
          CarouselSliderWidget(),
          const Specifications(),
          ItemsGrid(),
          const ItemsList(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                height: 175,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://res.cloudinary.com/farmersfreshzone/image/upload/v1698740751/banner/snsz22u3jcvkgf9rerge.jpg',
                    ),
                    fit: BoxFit.fill,
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
                children: <Widget>[
                  Text(
                    'Copyright @ 2023 Farmers Fresh Zone UI clone. All Rights Reserved. ',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    'Safalks',
                    style: TextStyle(
                      letterSpacing: 0.8,
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
