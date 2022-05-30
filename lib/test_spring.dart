import 'package:flutter/material.dart';

class Spring extends StatefulWidget {
  const Spring({Key? key}) : super(key: key);

  @override
  State<Spring> createState() => _SpringState();
}

class _SpringState extends State<Spring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            buildContent(),
            const SizedBox(width: 30),
            advertisment(),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            product(),
            const SizedBox(width: 30, height: 220),
            productsearch(),
          ]),
        ]),
      ),
    );
  }

  Widget buildContent() {
    return Center(
        child: Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xffCCCCCC),
            blurRadius: 3,
            spreadRadius: 3,
            offset: Offset(
              8.0,
              8.0,
            ),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 275,
      width: 144,
      child: Column(
        children: [
          productImage(),
          productOffer(),
          productName(),
          productDescription(),
          productQuantity(),
          productPriceAndAddBtn(),
        ],
      ),
    ));
  }

  Widget productImage() {
    return const Image(
        height: 67,
        width: 82,
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSorMvADS-ttW7fR0Nd_TKukjKwfCN8Ec8tJw&usqp=CAU'));
  }

  Widget productOffer() {
    return Center(
      child: Container(
        height: 13,
        width: 70,
        margin: const EdgeInsets.only(top: 25, right: 20),
        padding: const EdgeInsets.only(top: 2, left: 2),
        decoration: BoxDecoration(
          color: const Color(0xffFBDE54),
          borderRadius: BorderRadius.circular(2),
        ),
        child: const Text(
          "TODAY'S OFFER",
          style: TextStyle(
              fontSize: 9,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              color: Color(0xff584040)),
        ),
      ),
    );
  }

  Widget productName() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: const Text(
          "Basket fgfdgnjkhjiliulu",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff637032),
          ),
        ),
      ),
    );
  }

  Widget productDescription() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5.0),
        child: const Text(
          "Fruit of a muiltitude of plant species",
          style: TextStyle(
            wordSpacing: 2,
            fontSize: 10,
            color: Color(0xff637032),
          ),
        ),
      ),
    );
  }

  Widget productQuantity() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: const Text(
          "500 gms / 2 - 4 pcs",
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff637032),
          ),
        ),
      ),
    );
  }

  Widget productPriceAndAddBtn() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Rs.105",
                style: TextStyle(
                  color: Color(0xff637032),
                )),
            MaterialButton(
              color: const Color(0xffA3C86F),
              height: 30,
              minWidth: 52,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: const Text(
                'ADD',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget advertisment() {
    return Center(
        child: Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xffCCCCCC),
            blurRadius: 3,
            spreadRadius: 3,
            offset: Offset(
              8.0,
              8.0,
            ),
          ),
        ],
        color: const Color(0xffF4A297),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 175,
      width: 143,
      child: Column(
        children: [
          productText(),
        ],
      ),
    ));
  }

  Widget productText() {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 12, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MONDAY CHECKS",
              style: TextStyle(
                overflow: TextOverflow.fade,
                fontSize: 9,
                fontWeight: FontWeight.w600,
                color: const Color(0xff390C06).withOpacity(0.5),
              ),
            ),
            Text(
              "50% OFF",
              style: TextStyle(
                height: 1.5,
                fontSize: 29,
                fontWeight: FontWeight.w900,
                color: const Color(0xff390C06).withOpacity(0.5),
              ),
            ),
            Text(
              "Use Code",
              style: TextStyle(
                height: 2,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: const Color(0xff390C06).withOpacity(0.5),
              ),
            ),
            Text(
              "SPRNG",
              style: TextStyle(
                letterSpacing: 10,
                height: 2,
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: const Color(0xff390C06).withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget product() {
    return Center(
        child: Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xffCCCCCC),
            blurRadius: 3,
            spreadRadius: 3,
            offset: Offset(
              8.0,
              8.0,
            ),
          ),
        ],
        color: const Color(0xffF3E297),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 158,
      width: 144,
      child: procducteat(),
    ));
  }

  Widget procducteat() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Builder(builder: (context) {
          return const Text(
            "know",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff390C0680),
            ),
          );
        }),
        const Text(
          "What You",
          style: TextStyle(
            height: 2,
            fontSize: 15,
            color: Color(0xff390C0680),
          ),
        ),
        const Text(
          "EAT",
          style: TextStyle(
            height: 2,
            letterSpacing: 10,
            fontSize: 15,
            color: Color(0xff390c0680),
          ),
        ),
      ],
    );
  }

  Widget productsearch() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xffCCCCCC),
              blurRadius: 3,
              spreadRadius: 3,
              offset: Offset(
                8.0,
                8.0,
              ),
            ),
          ],
          color: Color(0xffF6F7F2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          productImage1(),
          productText1(),
          productQuantity1(),
        ]),
      ),
    );
  }

  Widget productImage1() {
    return Container(
      padding: const EdgeInsets.only(right: 40),
      child: const Image(
        height: 40,
        width: 46,
        image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1nuCKIZAbs4QBnto-aQ5HcEbBjec0Hng4Xg&usqp=CAU"),
      ),
    );
  }

  Widget productText1() {
    return Column(children: const [
      Text(
        "Raspberries",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Color(0xff637032),
        ),
      ),
      Text(
        "Rs 105 / 500gms",
        style: TextStyle(
          height: 2,
          fontSize: 12,
          color: Color(0xff637032),
        ),
      ),
    ]);
  }

  Widget productQuantity1() {
    return Container(
      padding: const EdgeInsets.only(left: 40),
      child: Row(children: const [
        Icon(Icons.add, size: 15, color: Color(0xff637032)),
        SizedBox(width: 10),
        Text('1',
            style: TextStyle(
                color: Color(0xff637032),
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        SizedBox(width: 10),
        Icon(Icons.remove, size: 15, color: Color(0xff637032)),
      ]),
    );
  }
}
