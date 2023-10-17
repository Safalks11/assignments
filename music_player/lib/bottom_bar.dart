import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main_page.dart';
import 'package:untitled/menu_page.dart';
import 'package:untitled/playlist.dart';
import 'package:untitled/search_page.dart';

// void main() {
//   runApp(MaterialApp(
//     home: BottomBar(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  var screens = [Home_Page(), Search_Page(), PlayLists(), Menu_Page()];

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        activeColor: Colors.pink[200],
        style: TabStyle.flip,
        backgroundColor: Colors.black,
        items: [
          TabItem(
              icon: Text(
            "PlayList",
            style: TextStyle(color: Colors.grey),
          )),
          TabItem(icon: Icons.search_rounded),
          TabItem(icon: Icons.featured_play_list),
          TabItem(icon: Icons.more_horiz_rounded),
        ],
        initialActiveIndex: index,
        onTap: (tapedindex) {
          setState(() {
            index = tapedindex; // here index value change according to each tap
          });
        });
  }
}
