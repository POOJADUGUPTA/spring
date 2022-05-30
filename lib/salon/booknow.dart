import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 430,
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageList.length,
                      onPageChanged: (value) {
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return imagescrollList(index);
                      }),
                ),
                DotsIndicator(
                  dotsCount: 5,
                  position: currentIndex + 0,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeColor: Color(0xffEC994B),
                    activeSize: const Size(30.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ],
            ),
            listData(),
            speciaList(),
            buttonList(),
            workingHours(),
            contactUs(),
            ourAddress(),
            submitBtn(),
          ],
        ),
      ),
    );
  }

  Widget imagescrollList(int index) {
    return Stack(
      children: const [
        Image(image: AssetImage("images/imagelist.png")),
        Icon(Icons.arrow_back, size: 30)
      ],
    );
  }

  Widget listData() {
    return Column(
      children: [
        Text("Barbarella Inova",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              size: 15,
              color: Color(0xffEC994B),
            ),
            const SizedBox(width: 5),
            Text("6993 Meadow Valley Terrace, New York",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget speciaList() {
    return Container();
  }

  Widget buttonList() {
    return Container();
  }

  Widget workingHours() {
    return Container();
  }

  Widget contactUs() {
    return Column();
  }

  Widget ourAddress() {
    return Column();
  }

  Widget submitBtn() {
    return Column();
  }
}

List<String> imageList = [
  "images/imagelist.png",
  "images/imagelist.png",
  "images/imagelist.png",
  "images/imagelist.png",
  "images/imagelist.png"
];
