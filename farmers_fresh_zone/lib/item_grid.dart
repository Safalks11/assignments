import 'package:flutter/material.dart';

class ItemsGrid extends StatelessWidget {
  final List<String> images = [
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1638787119/Product/jghu86qgjdtnsvlyvnkl.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1676114778/banners/pxytchw9khrnorziagay.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435765/Product/tssgwn0eeejipf8mhfd2.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1676379471/banners/w0mivtggfeptjocxzkc5.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1675850558/banners/e3wrznkywyhuslrmpmep.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933525/product/kayzgbtyrzup3uiiflhu.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1675402098/banners/yr56bd8zbhaokg4egkn6.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1676114624/banners/a0b1dt5dtcg2rit5tq4k.jpg',
  ];

  final List<String> items = [
    'Offers',
    'Vegetables',
    'Fruits',
    'Exotic',
    'Fresh Cuts',
    'Nutrition Charges',
    'Packed Flavors',
    'Gourmet Salads'
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Shop By Category',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          items[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 10),
          SizedBox(
            child: Image.network(
                "https://farmersfz.com/assets/v4/assets/farmer_to_plate_v2.jpg"),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
