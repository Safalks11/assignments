import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BlogList extends StatelessWidget {
  var blogs = [
    'https://plus.unsplash.com/premium_photo-1673953509975-576678fa6710?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZG9jdG9yfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1609766456145-f0332168845a?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1498837167922-ddd27525d352?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGhlYWx0aHxlbnwwfHwwfHx8MA%3D%3D'
  ];
  var posts = [
    'Five reasons why Broccoli shou..',
    'Control Blood Pressure,the ri..',
    'Five tips that prevent you fro..'
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
            child: Text(
              'Our Blog Posts',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 195,
            child: CarouselSlider(
              items: List.generate(
                blogs.length,
                (index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 4,
                        width: MediaQuery.of(context).size.width * 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: NetworkImage(blogs[index]),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              posts[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'a year ago',
                              style: TextStyle(color: Colors.grey, fontSize: 9),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward,
                              size: 16,
                              color: Colors.green,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  viewportFraction: 0.4,
                  height: 300,
                  padEnds: false),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'VIEW MORE',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
