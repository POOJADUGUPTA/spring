import 'package:flutter/material.dart';

//VPNConnectionMobileView
class Connection extends StatefulWidget {
  const Connection({Key? key}) : super(key: key);

  @override
  State<Connection> createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
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
          //mobileheader
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
          width: 270,
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
                  padding: EdgeInsets.only(top: 45, left: 25, right: 25),
                  child: Text("Launch A Secure\nConnection",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 0.8,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff00A99D),
                      )),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          squareInput(),
                          const SizedBox(width: 3),
                          squareInput(),
                          const SizedBox(width: 3),
                          squareInput(),
                          const SizedBox(width: 3),
                          squareInput(),
                          const SizedBox(width: 3),
                          squareInput(),
                          const SizedBox(width: 3),
                          squareInput(),
                          const SizedBox(width: 3),
                          squareInput(),
                          const SizedBox(width: 3),
                          squareInput(),
                        ],
                      ),
                    ],
                  ),
                )
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

  Widget squareInput() {
    return Container(
      height: 25,
      width: 25,
      decoration:
          BoxDecoration(border: Border.all(color: const Color(0xff00A99D))),
    );
  }
}
