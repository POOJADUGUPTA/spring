import 'package:flutter/material.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({Key? key}) : super(key: key);

  @override
  State<CheckIn> createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00A99D),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            topLogo(),
            nomadScreen(),
          ],
        ),
      ),
    );
  }

  Widget topLogo() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Image(height: 40, image: AssetImage("images/nomad.png")),
              Icon(Icons.menu, size: 25, color: Colors.white),
            ],
          ),
          const Image(
              height: 240, image: AssetImage("images/checkinimage.png")),
        ],
      ),
    );
  }

  Widget nomadScreen() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 380),
          height: 190,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 170,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.teal, width: 1.2)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 40, top: 45, left: 40),
                  child: Text("Check-In To Your\nWorkspace",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 0.8,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff00A99D),
                      )),
                ),
                const SizedBox(height: 15),
                Container(
                    height: 33,
                    decoration: BoxDecoration(
                        color: const Color(0xff00A99D),
                        borderRadius: BorderRadius.circular(5)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Check-in",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                    ))
              ],
            ),
          ),
        ),
        const Positioned(
            top: 325,
            child:
                Image(height: 100, image: AssetImage("images/rightlogo.png"))),
      ],
    );
  }
}
