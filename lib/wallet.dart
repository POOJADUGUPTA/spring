import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6F7F2),
        body: Column(mainAxisSize: MainAxisSize.min, children: [
          productImage(),
          productWallet(),
          productTransaction(),
          Expanded(
            child: productDate(),
          )
        ]));
  }

  Widget productImage() {
    return const Center(child: Image(image: NetworkImage("lib/Group 134.png")));
  }

  Widget productWallet() {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        child: const Text(
          "Your Wallet",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color(0xffCEDE6E)),
        ),
      ),
    );
  }

  Widget productTransaction() {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 40),
      child: Row(
        children: const [
          Icon(Icons.location_on, size: 15, color: Color(0xff637032)),
          SizedBox(width: 10),
          Text(
            "Wallet Transactions",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Color(0xff637032)),
          ),
          Spacer(),
          Icon(Icons.calendar_today, size: 15, color: Color(0xff9B9B9B)),
          SizedBox(width: 10),
          Text(
            "July",
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0xffC73227)),
          ),
        ],
      ),
    );
  }

  Widget productDate() {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () => print(index),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  width: 312,
                  height: 89,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Mon, Jun 29",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xff637032)),
                            ),
                            Spacer(),
                            Text(
                              "Rs 1209",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xffFC9088)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text(
                              "Full order payment",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B)),
                            ),
                            Spacer(),
                            Text(
                              "Get invoice",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 11,
                                  color: Color(0xffC73227)),
                            ),
                          ],
                        ),
                      ]),
                ));
          }),
    );
  }
}
