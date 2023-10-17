import 'package:flutter/material.dart';
import 'package:untitled/playlist.dart';

import 'bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    home: MusicPlayer(),
    debugShowCheckedModeBanner: false,
  ));
}

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: true,
            pinned: true,
            title: Center(
                child: Text(
              'Playlists',
              style: TextStyle(
                  color: Colors.pink[200], fontWeight: FontWeight.bold),
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
                          borderSide: BorderSide(color: Colors.white12),
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
          SliverToBoxAdapter(child: PlayLists()),
          // SliverToBoxAdapter(
          //   child: BottomBar(),
          // )
        ],
      ),
    );
  }
}
