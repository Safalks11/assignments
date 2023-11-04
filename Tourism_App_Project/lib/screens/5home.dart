import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tourism_app_project/data/dummydata.dart';

class HomeShared extends StatefulWidget {
  const HomeShared({super.key, required List<Map> data});

  @override
  State<HomeShared> createState() => _HomeSharedState();
}

class _HomeSharedState extends State<HomeShared> {
  var images = [
    'https://images.pexels.com/photos/753339/pexels-photo-753339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2901212/pexels-photo-2901212.jpeg',
    'https://images.pexels.com/photos/358457/pexels-photo-358457.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/586687/pexels-photo-586687.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];
  var number = ['7050', '7051', '7052', '7053'];
  var title = [
    'Furious Place',
    'Luxury Place',
    'Nature Look',
    'Favourite Place'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            const CustomAppBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                  child: Row(
                    children: [
                      Text(
                        'Popular Places',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text('View More')
                    ],
                  ),
                ),
                GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 10),
                    itemCount: images.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed('details',
                            arguments: details[index]['id']),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  images[index],
                                )),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  height: 20,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.blue[800]),
                                  child: Center(
                                      child: Text(
                                    number[index],
                                    style: const TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                              Positioned(
                                  bottom: 15,
                                  left: 10,
                                  child: Text(
                                    title[index],
                                    style: const TextStyle(
                                        letterSpacing: 1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ))
                            ],
                          ),
                        ),
                      );
                    })
              ]),
            )
          ],
        ));
  }
}

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 80,
      centerTitle: true,
      title: Text(
        'Yaatra.com',
        style: GoogleFonts.lilitaOne(color: Colors.black, fontSize: 30),
      ),
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25,
          ),
        ),
      ],
      bottom: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          color: Colors.grey[300],
          height: 45,
          width: double.infinity,
          child: const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Search",
                suffixIcon: Icon(Icons.search)),
          ),
        ),
      ),
    );
  }
}
