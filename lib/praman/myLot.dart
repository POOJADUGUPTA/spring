import 'package:flutter/material.dart';

class Mylot extends StatefulWidget {
  const Mylot({Key? key}) : super(key: key);

  @override
  State<Mylot> createState() => _MylotState();
}

class _MylotState extends State<Mylot> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return myLot();
  }

  Widget myLot() {
    return Column(
      children: [
        productLanguage(),
        productLots(),
        productToday(),
        Expanded(
          child: ListView(children: [
            productEarn(),
            productOffer(),
            productText(),
            poductcreate(),
            productText1(),
            productImage(),
            productText2(),
          ]),
        ),
      ],
    );
  }

  Widget productLanguage() {
    return Container(
      padding: const EdgeInsets.only(left: 205, top: 14),
      child: Row(
        children: [
          const Text("Language Preference: "),
          const Image(
              height: 21,
              width: 76,
              image: NetworkImage("images/हिंदी+English.png")),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                (isSwitched);
              });
            },
            activeTrackColor: const Color(0xffB2E5A0),
            activeColor: const Color(0xff5E5E5E),
          ),
        ],
      ),
    );
  }

  Widget productLots() {
    return Container(
      padding: const EdgeInsets.only(top: 14, left: 16, right: 12),
      child: Row(
        children: const [
          Image(height: 25, width: 21, image: NetworkImage("images/icon1.png")),
          SizedBox(width: 9),
          Text("My Lots",
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 24,
                  color: Color(0xff5E5E5E))),
          SizedBox(width: 335),
          Icon(
            Icons.notifications_none,
            size: 21,
            color: Color(0xff838A81),
          ),
        ],
      ),
    );
  }

  Widget productToday() {
    return Container(
      color: const Color(0xffEEEEEE),
      margin: const EdgeInsets.only(top: 25, left: 8, right: 9),
      padding: const EdgeInsets.all(7),
      child: Row(
        children: const [
          Image(
              height: 24,
              width: 28,
              image: NetworkImage("images/clarity_date-solid.png")),
          SizedBox(width: 20),
          Text(
            "Today    |    ",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Color(0xff838A81)),
          ),
          SizedBox(width: 20),
          Text(
            "<",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff484848)),
          ),
          SizedBox(width: 80),
          Text(
            "30 May 2020 ",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff484848)),
          ),
          SizedBox(width: 80),
          Text(
            ">",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xffC4C4C4)),
          ),
        ],
      ),
    );
  }

  Widget productEarn() {
    return Container(
      color: const Color(0xffA07658),
      margin: const EdgeInsets.only(top: 22, left: 8, right: 9),
      padding: const EdgeInsets.only(left: 125, top: 6, bottom: 6),
      child: Row(
        children: const [
          Image(image: NetworkImage("images/icon2.png")),
          SizedBox(width: 18),
          Text(
            "Refer & Earn!",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Color(0xffFFFFFF)),
          )
        ],
      ),
    );
  }

  Widget productOffer() {
    return Container(
      color: const Color(0xffCEE0CE),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 10, left: 26),
      child: Column(
        children: [
          Row(
            children: const [
              Image(
                  height: 65,
                  width: 92,
                  image: NetworkImage("images/icon3.png")),
              SizedBox(width: 50),
              Flexible(
                  child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '30% OFF',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xff5D5D5D)),
                    ),
                    TextSpan(
                        text:
                            ' on transportation! call now to claim this offer',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D5D5D))),
                  ],
                ),
              ))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 15, right: 20),
            child: MaterialButton(
              color: const Color(0xffCEE0CE),
              height: 38,
              minWidth: 685,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: Color(0xff07654E))),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.call,
                    size: 16,
                    color: Color(0xff07654E),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Claim Offer!",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff07654E)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget productText() {
    return Container(
      color: const Color(0xffcee0ce),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(left: 115, top: 6, bottom: 6),
      child: const Text(
        "You haven't created any lots today",
        style: TextStyle(
            letterSpacing: 1,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff5D5D5D)),
      ),
    );
  }

  Widget poductcreate() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(left: 120, top: 6, bottom: 6),
      color: const Color(0xff07654E),
      child: Row(
        children: const [
          Image(height: 34, width: 52, image: NetworkImage("images/icon4.png")),
          SizedBox(width: 16),
          Text(
            "Create New Lot",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Color(0xffFFFFFF)),
          ),
        ],
      ),
    );
  }

  Widget productText1() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.info,
            size: 16,
            color: Color(0xff838A81),
          ),
          SizedBox(width: 10),
          Text(
            "Watch how to use the app",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff5E5E5E)),
          ),
        ],
      ),
    );
  }

  Widget productImage() {
    return const Image(image: NetworkImage("images/icon5.png"));
  }

  Widget productText2() {
    return Container(
      padding: const EdgeInsets.only(bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.whatsapp,
            size: 16,
            color: Color(0xff838A81),
          ),
          SizedBox(width: 10),
          Text(
            "Contact Us on Whatsapp",
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff5E5E5E)),
          ),
        ],
      ),
    );
  }
}
