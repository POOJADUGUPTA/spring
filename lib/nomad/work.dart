import 'package:flutter/material.dart';
import 'package:spring/nomad/favorite.dart';
import 'package:spring/nomad/message.dart';
import 'package:spring/nomad/nomad.dart';
import 'package:spring/nomad/profile.dart';
import 'package:spring/nomad/search.dart';

class WorkWhereYouAre extends StatefulWidget {
  const WorkWhereYouAre({Key? key}) : super(key: key);

  @override
  State<WorkWhereYouAre> createState() => _WorkWhereYouAreState();
}

class _WorkWhereYouAreState extends State<WorkWhereYouAre> {
  bool isSwitched = true;
  int selectedIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    Search(),
    Favorite(),
    Nomad(),
    Message(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: bottomIcon(),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }

  BottomNavigationBar bottomIcon() {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0x00ffffff).withOpacity(0.001),
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("images/search.png"),
            color: Color(0xffffffff),
          ),
          label: 'search',
          activeIcon: ImageIcon(
            AssetImage("images/search.png"),
            color: Color(0xffffffff),
          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("images/heart.png"),
            color: Color(0xffffffff),
          ),
          label: 'favorite',
          activeIcon: ImageIcon(
            AssetImage("images/heart.png"),
            color: Color(0xffffffff),
          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("images/nomadicon.png"),
            color: Color(0xffffffff),
          ),
          label: 'nomad',
          activeIcon: ImageIcon(
            AssetImage("images/nomadicon.png"),
            color: Color(0xffffffff),
          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("images/message.png"),
            color: Color(0xffffffff),
          ),
          label: 'message',
          activeIcon: ImageIcon(
            AssetImage("images/message.png"),
            color: Color(0xffffffff),
          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("images/profile.png"),
            color: Color(0xffffffff),
          ),
          label: 'profile',
          activeIcon: ImageIcon(
            AssetImage("images/profile.png"),
            color: Color(0xffffffff),
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
