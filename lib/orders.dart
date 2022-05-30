// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, avoid_print

import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        productorder(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext, int index) {
              return GestureDetector(
                  onTap: () => print(index), child: productallorder());
            },
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 5, right: 50),
            itemCount: 6,
            scrollDirection: Axis.vertical,
          ),
        ),
      ]),
    );
  }

  Widget productorder() {
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 300),
      child: const Text(
        "Orders",
        style: TextStyle(
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Color(0xffcede6e),
        ),
      ),
    );
  }

  Widget productallorder() {
    return Container(
      width: 300,
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
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 50, left: 70),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Arriving Thu, 24 Jun",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.9,
                  color: Color(0xff637032)),
            ),
            const SizedBox(height: 20),
            const Text(
              "11.00 am to 12.00 pm",
              style: TextStyle(fontSize: 13, color: Color(0xff637032)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Order Id : 8779988988",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff637032),
                  ),
                ),
                Text(
                  "15 items",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xffC73227),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Order Received",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD3AF35)),
                ),
                Text(
                  "Rs 567",
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff637032),
                  ),
                )
              ],
            ),
          ]),
    );
  }
}
