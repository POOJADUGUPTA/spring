import 'package:flutter/material.dart';

class ListCounter extends StatefulWidget {
  const ListCounter({Key? key}) : super(key: key);

  @override
  State<ListCounter> createState() => _ListCounterState();
}

class _ListCounterState extends State<ListCounter> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff262643).withOpacity(0.95),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const Image(
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
              image: AssetImage("images/dark_bluescreen.png"),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.030,
                    left: MediaQuery.of(context).size.height * 0.050),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Color(0xffFFFFFF),
                    ),
                    SizedBox(width: 110),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                          color: const Color(0xff00A99D),
                          borderRadius: BorderRadius.circular(5)),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    SizedBox(
                      height: 515,
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imageList.length,
                          onPageChanged: (value) {
                            setState(() {
                              currentIndex = value;
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: () => print(index),
                                child: imageCount(index));
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "${currentIndex + 1}/${imageList.length}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageCount(int index) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.060),
      child: const Image(
          fit: BoxFit.fill, image: AssetImage("images/imagecounter.jpeg")),
    );
  }
}

List<String> imageList = [
  "images/imagecounter.jpeg",
  "images/imagecounter.jpeg",
  "images/imagecounter.jpeg",
  "images/imagecounter.jpeg",
  "images/imagecounter.jpeg",
];
