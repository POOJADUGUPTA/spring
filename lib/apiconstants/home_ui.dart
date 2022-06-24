import 'package:flutter/material.dart';
import 'package:spring/apiconstants/UserModel.dart';
import 'package:spring/apiconstants/api_service.dart';
import 'package:spring/apiconstants/carousel_image.dart';

class Home extends StatefulWidget {
  ScrollController? scrollController;
  Home({this.scrollController});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Image(
                      height: 40,
                      color: Colors.white,
                      image: AssetImage("images/batch.png")),
                ),
                const Text(
                  'REST API Example',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            const Positioned(
              child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("images/Group 2 (1).png")),
            ),
            DraggableScrollableSheet(
                // expand: true,
                initialChildSize: 0.65,
                minChildSize: 0.55,
                maxChildSize: 1.0,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: stackScrollableview(
                        scrollController,
                      ),
                    ),
                  );
                }),
          ],
        ));
  }

  Widget stackScrollableview(ScrollController scrollController) {
    return _userModel == null || _userModel!.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : productField(scrollController);
  }

  Widget productField(ScrollController? scrollController) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      controller: scrollController,
      itemCount: _userModel!.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 7),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: index.isEven ? Colors.white : Colors.cyan,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 2, //spread radius
                  blurRadius: 2, // blur radius
                  offset: const Offset(2, 2),
                )
              ],
              border: Border.all(color: Colors.lightBlueAccent),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_userModel![index].id.toString(),
                      style: textStyle(index)),
                  Text(
                    _userModel![index].username ?? "",
                    style: textStyle(index),
                  ),
                ],
              ),
              const CarouselImage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _userModel![index].email ?? "",
                    style: textStyle(index),
                  ),
                  Text(
                    _userModel![index].website ?? "",
                    style: textStyle(index),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  TextStyle textStyle(int index) {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: index.isEven ? Colors.cyan : Colors.white,
    );
  }
}
