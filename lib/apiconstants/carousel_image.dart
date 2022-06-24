import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({Key? key}) : super(key: key);

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  final imgListData = [
    "images/checkinimage.png",
    "images/Group.png",
    "images/home_banner.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        options: CarouselOptions(height: 100),
        itemCount: imgListData.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final imgList = imgListData[index];
          return buildImage(imgList, index);
        },
      ),
    );
  }

  Widget buildImage(String imgList, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Image.asset(
        imgList,
        fit: BoxFit.fill,
      ),
    );
  }
}
