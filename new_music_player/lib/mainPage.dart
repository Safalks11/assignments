import 'package:flutter/material.dart';
import 'package:new_music_player/home.dart';
import 'package:new_music_player/more.dart';
import 'package:new_music_player/playlist.dart';
import 'package:new_music_player/searchPage.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: const CustomAppBar(),
      bottomNavigationBar: SlidingClippedNavBar(
        barItems: [
          BarItem(title: 'Home', icon: Icons.home),
          BarItem(title: 'Search', icon: Icons.search),
          BarItem(title: 'Playlists', icon: Icons.playlist_add_check_rounded),
          BarItem(title: 'More', icon: Icons.more_horiz_rounded)
        ],
        activeColor: Colors.pink.shade200,
        inactiveColor: Colors.white,
        backgroundColor: Colors.black,
        iconSize: 30,
        selectedIndex: selectedIndex,
        onButtonPressed: onButtonPressed,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [Home(), const SearchPage(), PlayLists(), const MorePage()],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({
    key,
  })  : preferredSize = const Size.fromHeight(130.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          floating: true,
          pinned: true,
          title: Center(
              child: Text(
            'Playlists',
            style:
                TextStyle(color: Colors.pink[200], fontWeight: FontWeight.bold),
          )),
          bottom: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(40)),
              width: double.infinity,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white12),
                        borderRadius: BorderRadius.circular(40)),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.pink[200]),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.pink[200],
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
