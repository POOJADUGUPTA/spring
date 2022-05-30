import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00A99D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              contentPage(),
              nomadText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget contentPage() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          imageProduct(),
          buttonField(),
          textField(),
          imageField(),
        ],
      ),
    );
  }

  Widget imageProduct() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const Image(image: AssetImage("images/Group.png")),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Image(height: 45, image: AssetImage("images/nomad.png")),
            Icon(Icons.menu, size: 30, color: Colors.white),
          ],
        ),
      ],
    );
  }

  Widget buttonField() {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Flexible(
                  child: Text("Location",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff00A99D))),
                ),
                // SizedBox(height: 5),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xffC4C4C4)),
                      hintText: 'Where will you be?',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          MaterialButton(
            height: 25,
            color: const Color(0xffF22525),
            shape: const CircleBorder(),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const CheckIn()));
            },
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.arrow_forward, color: Colors.white, size: 24),
            ),
          ),
        ],
      ),
    );
  }

  Widget textField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Work Where You\nWant",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Colors.white)),
        const SizedBox(height: 10),
        const Text(
            "After Months Of Working Alone From Home,\nMany Have Had Enough Of Their Home\nOffice.Whether It's Disruptive Home\nEnvironments Or Simply The Need To\nConnect With Others, Many Professionals\nNeed A Change Of Scenery....",
            style: TextStyle(fontSize: 15, color: Colors.white)),
        const SizedBox(height: 15),
        Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.020,
            right: MediaQuery.of(context).size.width * 0.020,
            top: MediaQuery.of(context).size.width * 0.005,
            bottom: MediaQuery.of(context).size.width * 0.005,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(3)),
          child: MaterialButton(
            onPressed: () {},
            child: const Text("Learn How",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xff00A99D),
                    fontSize: 12)),
          ),
        ),
        const SizedBox(height: 30),
        const Divider(
          color: Colors.white,
          thickness: 1,
        )
      ],
    );
  }

  Widget imageField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Image(height: 150, image: AssetImage("images/Group 2 (1).png")),
        const SizedBox(height: 15),
        Container(
            width: 250,
            child: const Text(
                "Access workspace whenever you need it,all over the city",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white))),
        const SizedBox(height: 16),
        const Image(height: 150, image: AssetImage("images/Group 3 (1).png")),
        Container(
            width: 250,
            child: const Text("Improve your productivity, focus and privacy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white))),
        const SizedBox(height: 16),
        const Image(height: 150, image: AssetImage("images/Group 4 (1).png")),
        Container(
            width: 250,
            child: const Text("Save money when you pay per minute",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white))),
      ],
    );
  }

  Widget nomadText() {
    return Image.asset("images/nomadscreen.png");
  }
}
