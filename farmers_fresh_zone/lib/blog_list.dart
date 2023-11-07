import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BlogList extends StatelessWidget {
  var blogs = [
    'assets/images/blog1.jpg',
    'assets/images/blog2.jpg',
    'assets/images/blog3.jpg'
  ];
  var posts = [
    'Five reasons why Broccoli shou..',
    'Control Blood Pressure,the ri..',
    'Five tips that prevent you fro..'
  ];

  BlogList({super.key});
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
            height: 201,
            child: CarouselSlider(
              items: List.generate(
                blogs.length,
                (index) => Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: AssetImage(blogs[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          posts[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
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
                padEnds: false,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
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
