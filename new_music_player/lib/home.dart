import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  var playlists = [
    "https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_default.jpg",
    "https://images.squarespace-cdn.com/content/v1/5b3e4e8796d455cefb9853a3/1583588270424-S1K3BDPP8JOWH895PYFM/cq.jpg",
    "https://mir-s3-cdn-cf.behance.net/project_modules/hd/137625112577745.60177189ef503.png",
    "https://i.scdn.co/image/ab67706f00000002f2d08778548e125bcb867692",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw0WQlxhT0GLhBy8TIRXI3yxtNMEznv-hS-Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbao_n2koIED4Q6UKFD4lowbM75j5p3McuLA&usqp=CAU",
    "https://i.scdn.co/image/ab67706c0000da84c95e899030ec4756f51e7944",
    "https://i.scdn.co/image/ab67616d0000b273760921b9de555a27f9f79322",
    "https://i.scdn.co/image/ab67706c0000da84f51379891c5259dc59f0db6b",
    "https://source.boomplaymusic.com/group10/M00/06/13/4c5c2decedb1445396f982088ff022c7_464_464.jpg",
    "https://source.boomplaymusic.com/group10/M00/05/09/d228930591da4de68bce21bfa8d246c4_464_464.jpg",
    "https://i1.sndcdn.com/avatars-000136741610-6wkjm5-t500x500.jpg",
  ];
  var title = [
    '...Starboy',
    'Dusk Till Dawn (feat. Sia)-Radio Edit',
    'Perfect',
    'Ghost',
    'Light Switch',
    'Intentions (feat.Quavo)'
  ];
  var subtitle = [
    'The Weeknd, Daft punk',
    'ZAYN, Sia',
    'Ed Sheeran',
    'Justin Bieber',
    'Charlie Puth',
    'Justin Bieber,Quavo'
  ];
  var profile = [
    'https://m.media-amazon.com/images/I/813XseYNw1L._UF1000,1000_QL80_.jpg',
    'https://i1.sndcdn.com/artworks-000405545727-arfwqx-t500x500.jpg',
    'https://i1.sndcdn.com/artworks-5QRVzLFOR1CJ6XBi-CRpmiw-t500x500.jpg',
    'https://i.scdn.co/image/ab67616d0000b273e6f407c7f3a0ec98845e4431',
    'https://upload.wikimedia.org/wikipedia/en/2/2a/Charlie_Puth_-_Light_Switch.png',
    'https://c.saavncdn.com/285/Intentions-Cover--English-2020-20200221203951-500x500.jpg'
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Musify.',
          style: GoogleFonts.nosifer(
            textStyle: TextStyle(
                color: Colors.pink[200],
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Suggested playlists",
                  style: GoogleFonts.tiltNeon(
                    textStyle: TextStyle(
                        color: Colors.pink[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              height: 150,
              child: CarouselSlider(
                items: List.generate(
                  playlists.length,
                  (index) => ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Align(
                        alignment: Alignment.center,
                        widthFactor: 1.0,
                        heightFactor: 1.5,
                        child: Image.network(playlists[index])),
                  ),
                ),
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: .4,
                  height: 300,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 10, bottom: 20),
            child: Row(
              children: [
                Text(
                  'Recommended for you',
                  style: GoogleFonts.tiltNeon(
                    textStyle: TextStyle(
                        color: Colors.pink[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: List.generate(
                  title.length,
                  (index) => ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              12.0), // Adjust the radius as needed
                          child: Align(
                            alignment: Alignment.center,
                            widthFactor: 1,
                            heightFactor: 1,
                            child: Image.network(profile[index]),
                          ),
                        ),
                        title: Text(
                          title[index],
                          style:
                              TextStyle(color: Colors.pink[200], fontSize: 15),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            subtitle[index],
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.pink[200],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.download,
                              color: Colors.pink[200],
                            )
                          ],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
