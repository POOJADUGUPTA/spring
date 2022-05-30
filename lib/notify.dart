import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          productTitle(),
          productImage(),
          productText(),
          productField(),
          productButton(),
        ],
      ),
    );
  }

  Widget productTitle() {
    return const Text(
      "Currently Not Servicable",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Color(0xffCEDE6E),
      ),
    );
  }

  Widget productImage() {
    return const Image(
      height: 98,
      width: 91,
      image: NetworkImage("lib/Group.jpg"),
    );
  }

  Widget productText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "Sorry, Currently we do not serve at Pin Code - 400424",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22,
              color: Color(0xff637032),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          "Leave your details with us and we will contact as soon as our service starts",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, color: Color(0xff637032)),
        ),
      ],
    );
  }

  Widget productField() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 40, right: 40),
        child: TextField(
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30)),
            hintText: "Mobile No.",
          ),
        ),
      ),
    );
  }

  Widget productButton() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.lightGreen.withOpacity(0.2),
          spreadRadius: 8,
          blurRadius: 5,
          offset: const Offset(0, 6),
        ),
      ]),
      child: MaterialButton(
        color: const Color(0xffA3C86F),
        height: 40,
        minWidth: 92,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: const Text(
          'Notify Me',
          style: TextStyle(
            letterSpacing: 0.8,
            fontSize: 11,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
