import 'package:flutter/material.dart';
import 'package:spring/nomad/checkin.dart';
import 'package:spring/nomad/secure%20connection.dart';

//LaunchCheckinmobileview
class Nomad extends StatefulWidget {
  const Nomad({Key? key}) : super(key: key);

  @override
  State<Nomad> createState() => _NomadState();
}

class _NomadState extends State<Nomad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00A99D),
      body: SafeArea(
        child: Column(children: [
          topLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CheckIn()));
                },
                child: nomadScreen(
                    text: "Check-In To Your\nWorkspace",
                    image: "images/rightlogo.png"),
              ),
              const SizedBox(width: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Connection()));
                },
                child: nomadScreen(
                    text: "Launch A Secure\nConnection",
                    image: "images/securelogo.png"),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget topLogo() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Image(height: 40, image: AssetImage("images/nomad.png")),
          Icon(Icons.menu, size: 25, color: Colors.white),
        ],
      ),
    );
  }

  Widget nomadScreen({String? text, String? image}) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100),
          height: 167,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 150,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.teal, width: 1.2)),
            child: Padding(
              padding: const EdgeInsets.only(right: 30, top: 70, left: 30),
              child: Text(text ?? "",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    letterSpacing: 0.8,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff00A99D),
                  )),
            ),
          ),
        ),
        Positioned(
            top: 40,
            left: 75,
            child: Image(height: 100, image: AssetImage(image ?? ""))),
      ],
    );
  }
}
