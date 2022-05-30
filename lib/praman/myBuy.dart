import 'package:flutter/material.dart';

class Mybuy extends StatefulWidget {
  const Mybuy({Key? key}) : super(key: key);

  @override
  State<Mybuy> createState() => _MybuyState();
}

class _MybuyState extends State<Mybuy> {
  @override
  Widget build(BuildContext context) {
    return myBuy();
  }

  Widget myBuy() {
    return Scaffold(
      body: Column(
        children: [
          productTitle(),
          Expanded(child: buildList()),
        ],
      ),
    );
  }

  Widget productTitle() {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 12),
      child: Row(
        children: const [
          Image(height: 30, width: 33, image: NetworkImage("images/chat.png")),
          SizedBox(width: 15),
          Text("Buy Lots",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  color: Color(0xff5E5E5E))),
          SizedBox(width: 280),
          Icon(
            Icons.notifications,
            size: 20,
            color: Color(0xff838A81),
          ),
        ],
      ),
    );
  }

  Widget buildList() {
    return ListView.builder(
        itemCount: buyDetails.length,
        itemBuilder: (BuildContext context, int index) {
          BuyDetails buyDetailsData = buyDetails[index];
          return productOnion(buyDetailsData);
        });
  }

  Widget productOnion(BuyDetails buyDetailsData) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xffCEE0CE),
        ),
        margin: const EdgeInsets.only(left: 5, right: 5, top: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 154,
                  // width: 489,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    image: DecorationImage(
                      image: NetworkImage(buyDetailsData.images ?? ''),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 3, bottom: 3),
                  decoration: const BoxDecoration(
                    color: Color(0xffCEE0CE),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomRight: Radius.circular(13.0)),
                  ),
                  child: Row(mainAxisSize: MainAxisSize.min, children: const [
                    Icon(Icons.remove_red_eye,
                        size: 17, color: Color(0xff5D5D5D)),
                    SizedBox(width: 5),
                    Text(
                      "5 views",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xff5D5D5D)),
                    ),
                  ]),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      buyDetailsData.name ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff5E5E5E),
                      ),
                    ),
                    Text(
                      buyDetailsData.date ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff5E5E5E),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      buyDetailsData.size ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff5E5E5E)),
                    ),
                    Text(
                      buyDetailsData.quantity ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff5E5E5E),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      buyDetailsData.percentage ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff5E5E5E),
                      ),
                    ),
                    Text(
                      buyDetailsData.price ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xff07654E),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  color: Color(0xff838A81),
                ),
                width: double.infinity,
                padding: const EdgeInsets.only(left: 180, top: 4, bottom: 4),
                child: Text(buyDetailsData.address ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffFFFFFF))),
              ),
            ]));
  }
}

List<BuyDetails> buyDetails = [
  BuyDetails(
      'images/Rectangle 31.png',
      'Onion Nasik (Maharashtra)',
      '2nd Oct 2020',
      'Over 55 (mm)',
      '55600 kg',
      '85% Normal',
      '₹ 35/kg',
      'Nasik · Maharashtra'),
  BuyDetails(
      'images/tomato.png',
      'Tomato Nasik (Maharashtra)',
      '2nd Oct 2020',
      'Over 55 (mm)',
      '55600 kg',
      '50% Normal',
      '₹ 50/kg',
      'Nasik · Maharashtra'),
  BuyDetails(
      'images/potato.png',
      'Potato Nasik (Maharashtra)',
      '2nd Oct 2020',
      'Over 55 (mm)',
      '55600 kg',
      '100% Normal',
      '₹ 80/kg',
      'Nasik · Maharashtra'),
  BuyDetails(
      'images/garlic.png',
      'Garlic Nasik (Maharashtra)',
      '2nd Oct 2020',
      'Over 55 (mm)',
      '55600 kg',
      '60% Normal',
      '₹ 40/kg',
      'Nasik · Maharashtra'),
  BuyDetails(
      'images/ginger.png',
      'Ginger Nasik (Maharashtra)',
      '2nd Oct 2020',
      'Over 55 (mm)',
      '55600 kg',
      '95% Normal',
      '₹ 150/kg',
      'Nasik · Maharashtra')
];

class BuyDetails {
  String? images;
  String? name;
  String? date;
  String? size;
  String? quantity;
  String? percentage;
  String? price;
  String? address;

  BuyDetails(this.images, this.name, this.date, this.size, this.quantity,
      this.percentage, this.price, this.address);
}
