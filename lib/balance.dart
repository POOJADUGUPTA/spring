import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F2),
      body: Column(
        children: [
          productImage(),
          productWallet(),
          productText(),
          productScroll(),
          productText2(),
          productOrder(),
        ],
      ),
    );
  }

  Widget productImage() {
    return const Center(
      child: Image(
          height: 186, width: 259, image: NetworkImage("lib/wallet 1.png")),
    );
  }

  Widget productWallet() {
    return const Text(
      "Your wallet balance is low",
      style: TextStyle(
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Color(0xff57C448)),
    );
  }

  Widget productText() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: const [
          Text(
            "For your subscription plan you need to ",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                wordSpacing: 2,
                fontSize: 13,
                color: Color(0xff637032)),
          ),
          SizedBox(height: 10),
          Text(
            "preorder for a min of 7 days. The money will",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                wordSpacing: 2,
                fontSize: 13,
                color: Color(0xff637032)),
          ),
          SizedBox(height: 10),
          Text(
            " remain in your wallet and we will deduct",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                wordSpacing: 2,
                fontSize: 13,
                color: Color(0xff637032)),
          ),
          SizedBox(height: 10),
          Text(
            "deduct once order is dispached.",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                wordSpacing: 2,
                fontSize: 13,
                color: Color(0xff637032)),
          ),
        ],
      ),
    );
  }

  Widget productScroll() {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => print(index),
              child: Container(
                margin: const EdgeInsets.all(20),
                width: 64,
                height: 17,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffCCCCCC),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                      offset: Offset(
                        6.0,
                        6.0,
                      ),
                    ),
                  ],
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Rs 8904",
                      style: TextStyle(fontSize: 10, color: Color(0xff57C448)),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget productText2() {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: const [
          Text(
            "With this subscription you will save",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                fontSize: 13,
                color: Color(0xff637032)),
          ),
          SizedBox(height: 10),
          Text(
            "34% every month",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                fontSize: 13,
                color: Color(0xff637032)),
          )
        ],
      ),
    );
  }

  Widget productOrder() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          color: const Color(0xffFFFFFF),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "16 Items | Rs 1732",
                style: TextStyle(
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff637032)),
              ),
              SizedBox(height: 20),
              Text(
                "Rs 1449 saved with this subscription",
                style: TextStyle(fontSize: 12, color: Color(0xffC73227)),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          color: const Color(0xffFFFFFF),
          padding: const EdgeInsets.only(top: 24, left: 180, bottom: 24),
          child: MaterialButton(
            color: const Color(0xffA3C86F),
            height: 50,
            minWidth: 62,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            child: const Text(
              'PLACE ORDER',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 11,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
