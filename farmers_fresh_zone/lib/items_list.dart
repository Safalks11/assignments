import 'package:flutter/material.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({super.key});

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  var items = [
    "assets/images/tomatoes.jpg",
    "assets/images/apple.jpg",
    "assets/images/onion.jpg",
    "assets/images/carrot.jpg",
    "assets/images/grapes.jpg",
    "assets/images/pineapple.jpg",
    "assets/images/orange.jpg",
    "assets/images/cucumber.jpg",
    "assets/images/potato.jpg",
    "assets/images/cauliflower.jpg"
  ];

  var names = [
    "Tomato (450gm-550gm)",
    "Apple 1kg",
    "Onion (450gm-550gm)",
    "Carrot-250gm",
    "Grapes 1kg",
    "Pineapple 1kg",
    "Orange-Imported 1kg",
    "Cucumber-200gm",
    "Potato (450gm-550gm)",
    "Cauliflower-1 Nos (600gm-900gm)",
  ];

  var price = [
    '\$16',
    '\$120',
    '\$63',
    '\$22',
    '\$94',
    '\$95',
    '\$140',
    '\$32',
    '\$16',
    '\$55'
  ];

  var quantity = [
    '1.00 NOS',
    '1.00 NOS',
    '1.00 NOS',
    '1.00 Pack',
    '1.00 Box',
    '1.00 NOS',
    '1.00 Box',
    '0.50 Kg',
    '1.00 NOS',
    '1.00 NOS'
  ];

  var offer = [
    '22% OFF',
    '30% OFF',
    '19% OFF',
    '40% OFF',
    '33% OFF',
    '12% OFF',
    '25% OFF',
    '33% OFF',
    '19% OFF',
    '40% OFF',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
            child: Text(
              'Best Selling Products',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.all(8),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: items.length,
            itemBuilder: (BuildContext, int index) {
              return Card(
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
                          image: AssetImage(items[index]),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        names[index],
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            price[index],
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 9.0),
                          child: Text(
                            offer[index],
                            style: const TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            quantity[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 8),
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text('ADD')),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.green),
              child: Center(
                child: Text(
                  'VIEW MORE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
