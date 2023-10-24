import 'package:flutter/material.dart';

class Items_Grid extends StatelessWidget {
  var images = [
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1638787119/Product/jghu86qgjdtnsvlyvnkl.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1676114778/banners/pxytchw9khrnorziagay.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435765/Product/tssgwn0eeejipf8mhfd2.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1676379471/banners/w0mivtggfeptjocxzkc5.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1675850558/banners/e3wrznkywyhuslrmpmep.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933525/product/kayzgbtyrzup3uiiflhu.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1675402098/banners/yr56bd8zbhaokg4egkn6.jpg',
    'https://res.cloudinary.com/ffz/image/upload/v1676114624/banners/a0b1dt5dtcg2rit5tq4k.jpg',
  ];
  var items = [
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Shop By Category',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
            itemCount: images.length,
            itemBuilder: (BuildContext, int index) {
              return Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 5,
                      width: MediaQuery.of(context).size.width * 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(images[index]),
                              fit: BoxFit.fill)),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          items[index],
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Container(
            height: 175,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://scontent-del1-1.xx.fbcdn.net/v/t1.6435-9/101189854_3883116585073473_5815209680959438848_n.png?_nc_cat=109&ccb=1-7&_nc_sid=300f58&_nc_ohc=8UvhktDBJTwAX9V4NSS&_nc_ht=scontent-del1-1.xx&oh=00_AfCAc4mIFKVQY380Bgy_tF-NIIiHM04ciNzwJGMGCgExsA&oe=655F8D49',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
