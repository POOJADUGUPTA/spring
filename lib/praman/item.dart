import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          productAppbar(),
          productTitle(),
          Expanded(child: productGrid()),
        ],
      ),
    );
  }

  Widget productAppbar() {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.only(top: 30),
      height: 30,
      child: const Align(
          alignment: Alignment.centerLeft, child: Icon(Icons.arrow_back)),
    );
  }

  Widget productTitle() {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Selected Item",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Color(0xff838A81)),
        ),
      ),
    );
  }

  Widget productGrid() {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          ItemDetails itemDetailsData = itemDetails[index];
          return itemData(itemDetailsData);
        }));
  }

  Widget itemData(ItemDetails itemDetailsData) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xffC7D0C3),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 142,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    image: DecorationImage(
                      image: AssetImage(itemDetailsData.image ?? ''),
                      fit: BoxFit.fitWidth,
                    ),
                  )),
              Container(
                padding: const EdgeInsets.only(top: 150, left: 65),
                child: Text(
                  itemDetailsData.name ?? '',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Color(0xff07654E)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<ItemDetails> itemDetails = [
  ItemDetails('images/onion2.png', 'Onion'),
  ItemDetails('images/Potato2.png', 'Potato'),
  ItemDetails('images/tomato2.png', 'Tomato'),
  ItemDetails('images/Garlic2.png', 'Garlic'),
  ItemDetails('images/Ginger2.png', 'Ginger'),
  ItemDetails('images/pomegranate.png', 'Onion'),
];

class ItemDetails {
  String? image;
  String? name;

  ItemDetails(this.image, this.name);
}
