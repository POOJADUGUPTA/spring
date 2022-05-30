import 'package:flutter/material.dart';

import 'myBuy.dart';
import 'myLot.dart';
import 'myNotify.dart';

class Listing extends StatefulWidget {
  const Listing({Key? key}) : super(key: key);

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  bool isSwitched = true;
  int selectedIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    Mybuy(),
    Mynotify(),
    Mylot(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: productfooter(),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }

  Widget productfooter() {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.tag_faces,
            color: Color(0xff5E5E5E),
          ),
          label: ("Buy Lots"),
          activeIcon: Icon(
            Icons.tag_faces,
            color: Color(0xff07654E),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: Color(0xff5E5E5E),
          ),
          label: ("My Notify"),
          activeIcon: Icon(
            Icons.shopping_cart,
            color: Color(0xff07654E),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.screen_share,
            color: Color(0xff5E5E5E),
          ),
          label: ("My Lots"),
          activeIcon: Icon(
            Icons.screen_share,
            color: Color(0xff07654E),
          ),
        ),
      ],
      onTap: (index) {
        print('Index...${index}');
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
