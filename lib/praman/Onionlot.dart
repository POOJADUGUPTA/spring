import 'package:flutter/material.dart';

class Onionlot extends StatefulWidget {
  const Onionlot({Key? key}) : super(key: key);

  @override
  State<Onionlot> createState() => _OnionlotState();
}

class _OnionlotState extends State<Onionlot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            productAppbar(),
            productTitle(),
            productDistance(),
            productPrice(),
            productQuality(),
            productImagetitle(),
            productImage(),
            productBtn1(),
            productBtn2(),
            productFooter(),
          ],
        ),
      ),
    );
  }

  Widget productAppbar() {
    return Container(
      color: const Color(0xffBFFFBE),
      padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
      child: Row(
        children: const [
          Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_back,
                size: 25,
                color: Color(0xff353834),
              )),
          SizedBox(width: 84),
          Text(
            "Onion-Lot5989",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color(0xff353834)),
          ),
        ],
      ),
    );
  }

  Widget productTitle() {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: const Text("Onion",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 35,
              color: Color(0xff5E5E5E))),
    );
  }

  Widget productDistance() {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Onion Khairthal (Rajasthan)",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff5E5E5E)),
              ),
              Text(
                "45-55 mm",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff5E5E5E)),
              ),
            ],
          ),
          const Divider(
              height: 35,
              thickness: 2,
              indent: 2,
              endIndent: 10,
              color: Color(0xffC7D0C3)),
        ],
      ),
    );
  }

  Widget productPrice() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "₹ 55/kg",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xff07654E),
                  ),
                ),
                Text(
                  "5000 kg",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xff5E5E5E),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "16 Nov 2020",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5E5E5E)),
                ),
                Text(
                  "03:22 PM",
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5E5E5E),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Contact to buy",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF35800)),
                ),
                Text(
                  "8624996128",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffF35800),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text("Koramangala . Bangalore Urban, Karnataka",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff5E5E5E))),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                        color: Color(0xff5E5E5E),
                        width: 2,
                        style: BorderStyle.solid),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Edit Lot Details',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 23,
                      color: Color(0xff5E5E5E),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                MaterialButton(
                  color: const Color(0xffCEE0CE),
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                        color: Color(0xff07654E),
                        width: 2,
                        style: BorderStyle.solid),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Mark as Sold',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 23,
                      color: Color(0xff07654E),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ]),
    );
  }

  Widget productQuality() {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffC7D0C3),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      padding: const EdgeInsets.only(top: 13, left: 10, right: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Quality Report",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                    color: Color(0xff353834),
                  ),
                ),
                SizedBox(width: 50),
                Icon(
                  Icons.face_rounded,
                  size: 18,
                  color: Color(0xff5E5E5E),
                ),
                Text(
                  "MARK AS INCORRECT",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xff5E5E5E),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xffFFFFFF),
              height: 35,
              thickness: 3,
              indent: 2,
              endIndent: 3,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "TYPE",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5E5E5E)),
                ),
                Text(
                  "PERCENTAGE %",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5E5E5E),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "NORMAL",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff07654E)),
                ),
                Text(
                  "95%",
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff07654E),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Half cut",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff353834))),
                Text(
                  "7.1%",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff353834),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Smut effected",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff353834))),
                Text(
                  "1.8%",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff353834),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Rotten",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff353834))),
                Text(
                  "16.5",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff353834),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
          ]),
    );
  }

  Widget productImagetitle() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: const Text("9 Photos",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 27,
              color: Color(0xff5E5E5E))),
    );
  }

  Widget productImage() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 150,
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage("images/onion3.png"),
                fit: BoxFit.cover,
              ),
            ),
          )),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage("images/onion4.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage("images/onion3.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget productBtn1() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: MaterialButton(
        height: 48,
        minWidth: 344,
        color: const Color(0xff838A81),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.photo_camera,
              size: 24,
              color: Color(0xffFBF8F8),
            ),
            SizedBox(width: 10),
            Text(
              'Add Another Photo',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xffFBFAFA),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productBtn2() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: MaterialButton(
        height: 48,
        minWidth: 344,
        color: const Color(0xff07654E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.whatsapp,
              size: 24,
              color: Color(0xffFBF8F8),
            ),
            SizedBox(width: 10),
            Text(
              'Send via Whatsapp',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xffFBFAFA),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productFooter() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 60),
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tag_faces,
              color: Color(0xff07654E),
            ),
            label: ("My Lot"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xff5E5E5E),
            ),
            label: ("Buy Lot"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.screen_share,
              color: Color(0xff5E5E5E),
            ),
            label: ("Notify"),
          ),
        ],
      ),
    );
  }
}
