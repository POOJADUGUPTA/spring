import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6F7F2),
        body: ListView(children: [
          productTitle(),
          productAddress(),
          productDate(),
          productTime(),
          productDelivery(),
          productCoupon(),
          productSubscribe(),
          productText(),
          productReview(),
          productButton(),
        ]));
  }

  Widget productTitle() {
    return Container(
      padding: const EdgeInsets.only(left: 40, top: 30),
      child: const Text(
        "Your Order",
        style: TextStyle(
            fontSize: 22,
            color: Color(0xffCEDE6E),
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
      ),
    );
  }

  Widget productAddress() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: const [
            Text(
              "Delivery to [Address Name]",
              style: TextStyle(fontSize: 15, color: Color(0xff637032)),
            ),
            SizedBox(width: 150),
            Text(
              "Change",
              style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  color: Color(0xffC73227)),
            ),
          ], mainAxisAlignment: MainAxisAlignment.start),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 260),
            child: Text(
              "10, Walbhat Road, Shivshankar Nagar, Gore...",
              style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
            ),
          ),
        ],
      ),
    );
  }

  Widget productDate() {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Delivery Date",
                style: TextStyle(fontSize: 15, color: Color(0xff637032)),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 65,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => print(index),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: 58,
                          height: 65,
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
                                "MON",
                                style: TextStyle(
                                    fontSize: 9, color: Color(0xffCEDE6E)),
                              ),
                              Text(
                                "24",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff637032)),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ]),
      ),
    );
  }

  Widget productTime() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: const [
            Text(
              "Delivery Time",
              style: TextStyle(fontSize: 15, color: Color(0xff637032)),
            ),
            SizedBox(width: 250),
            Text(
              "Change",
              style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  color: Color(0xffC73227)),
            ),
          ], mainAxisAlignment: MainAxisAlignment.start),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 290),
            child: Text(
              "10.00 am - 11.00 am",
              style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
            ),
          ),
        ],
      ),
    );
  }

  Widget productDelivery() {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Tip your delivery partner",
            style: TextStyle(fontSize: 15, color: Color(0xff637032)),
          ),
          const SizedBox(height: 10),
          const Text(
            "Help your delivery partner during pandemic crises",
            style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 27,
            child: ListView.builder(
                // padding: const EdgeInsets.symmetric(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => print(index),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 58,
                      height: 27,
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
                            "Rs 20",
                            style: TextStyle(
                                fontSize: 9, color: Color(0xffCEDE6E)),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget productCoupon() {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Apply Coupon",
            style: TextStyle(fontSize: 15, color: Color(0xff637032)),
          ),
          Divider(
            height: 30,
            endIndent: 20,
            color: Color(0xff9B9B9B),
          )
        ],
      ),
    );
  }

  Widget productSubscribe() {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Subscribe for this order",
              style: TextStyle(fontSize: 15, color: Color(0xff637032)),
            ),
            const SizedBox(height: 10),
            const Text(
              "Repeat this and you can stop/pause it anytime.",
              style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
            ),
            const Text(
              "0 subscription fee",
              style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 27,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => print(index),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: 58,
                        height: 27,
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
                              "Daily",
                              style: TextStyle(
                                  fontSize: 9, color: Color(0xffCEDE6E)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ]),
    );
  }

  Widget productText() {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Item Total",
                style: TextStyle(fontSize: 14, color: Color(0xff637032)),
              ),
              Spacer(),
              Text(
                "Rs 1209",
                style: TextStyle(fontSize: 14, color: Color(0xff637032)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Text(
                "Delivery Charge",
                style: TextStyle(fontSize: 14, color: Color(0xff637032)),
              ),
              Spacer(),
              Text(
                "Rs 124",
                style: TextStyle(fontSize: 14, color: Color(0xff637032)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Text(
                "Taxes",
                style: TextStyle(fontSize: 14, color: Color(0xff637032)),
              ),
              Spacer(),
              Text(
                "Rs 24",
                style: TextStyle(fontSize: 14, color: Color(0xff637032)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Text(
                "Coupon Applied",
                style: TextStyle(fontSize: 14, color: Color(0xffCEDE6E)),
              ),
              Spacer(),
              Text(
                "Rs 124",
                style: TextStyle(fontSize: 14, color: Color(0xffCEDE6E)),
              ),
            ],
          ),
          const Center(child: SizedBox(height: 20)),
          Row(
            children: const [
              Text(
                "Total",
                style: TextStyle(fontSize: 14, color: Color(0xff637032)),
              ),
              Spacer(),
              Text(
                "Rs 24",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff637032)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget productReview() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
      color: const Color(0xffF3E297),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(Icons.menu, size: 15, color: Color(0xffA9AEE5)),
          SizedBox(width: 10),
          Text(
            "REVIEW ITEMS",
            style: TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.w700,
                fontSize: 9,
                color: Color(0xff637032)),
          ),
        ],
      ),
    );
  }

  Widget productButton() {
    return Row(
      children: [
        Container(
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
                "Subscribe and get it for 1720",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                    color: Color(0xffC73227)),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 90),
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
