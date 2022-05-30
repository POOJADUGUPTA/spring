import 'package:flutter/material.dart';
import 'package:spring/ticketcut.dart';

import 'clippath_cut.dart';

class ComeToWork extends StatefulWidget {
  const ComeToWork({Key? key}) : super(key: key);

  @override
  State<ComeToWork> createState() => _ComeToWorkState();
}

class _ComeToWorkState extends State<ComeToWork> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width / 10);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  backgroundImage(),
                  Positioned(
                    top: 20,
                    child: Text("COME TO\nWORK",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffFFFFFF),
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                            decorationColor: Color(0xff548CFF))),
                  ),
                  containerData(),
                  Positioned(
                    top: 80,
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.202,
                      // width: MediaQuery.of(context).size.width * 0.352,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xffD1E8E4),
                                blurRadius: 5,
                                spreadRadius: 0.1,
                                offset: Offset(0, 5.0))
                          ]),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundColor: Color(0xffFFFFFF),
                        child: CircleAvatar(
                          radius: 65,
                          backgroundImage: AssetImage("images/elsa.jpeg"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.263,
                      ),
                      child: const CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xffFFFFFF),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xff4dbeb5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget backgroundImage() {
    return Container(
        alignment: Alignment.topCenter,
        color: const Color(0xff4dbeb5).withOpacity(0.8),
        child: const Image(
            height: 420,
            width: 420,
            fit: BoxFit.fill,
            image: AssetImage("images/greenishscreen.png")));
  }

  Widget containerData() {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.090),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width / 10,
            right: MediaQuery.of(context).size.width / 10),
        child: Stack(alignment: Alignment.center, children: [
          TicketWidget(
              isCornerRounded: true,
              height: MediaQuery.of(context).size.height * 0.700,
              width: MediaQuery.of(context).size.width * 0.877,
              child: const TicketCut()),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.752),
            child: const Image(
                height: 40,
                image: AssetImage("images/lighht_greenishscreen.png")),
          ),
        ]),
      ),
    );

    // children: [
    //   Container(
    //     height: MediaQuery.of(context).size.height * 0.08,
    //     padding: const EdgeInsets.only(top: 13),
    //     child: const Text("COME TO\nWORK",
    //         textAlign: TextAlign.center,
    //         overflow: TextOverflow.fadestyle: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 20,
    //             color: Color(0xffFFFFFF),
    //             decoration: TextDecoration.underline,
    //             decorationThickness: 3,
    //             decorationColor: Color(0xff548CFF))),
    //   ),
    //   const SizedBox(height: 10),
    //   Stack(alignment: Alignment.topCenter, children: [
    //     TicketWidget(
    //         isCornerRounded: true,
    //         height: MediaQuery.of(context).size.height * 0.612,
    //         width: MediaQuery.of(context).size.width * 0.777,
    //         child: const TicketCut()),
    //   ]),
    //   Container(
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(80),
    //         boxShadow: const [
    //           BoxShadow(
    //               color: Color(0xffD1E8E4),
    //               blurRadius: 6,
    //               spreadRadius: 0.5,
    //               offset: Offset(0, 6.0))
    //         ]),
    //     child: const CircleAvatar(
    //       radius: 73,
    //       backgroundColor: Color(0xffFFFFFF),
    //       child: CircleAvatar(
    //         radius: 69,
    //         backgroundImage: AssetImage("images/elsa.jpeg"),
    //       ),
    //     ),
    //   ),
    //   Container(
    //     padding:
    //         EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.20),
    //     height: MediaQuery.of(context).size.height * 0.326,
    //     child: const CircleAvatar(
    //       radius: 21,
    //       backgroundColor: Color(0xffFFFFFF),
    //       child: CircleAvatar(
    //         radius: 18,
    //         backgroundColor: Color(0xff4dbeb5),
    //       ),
    //     ),
    //   ),
    //   Container(
    //       padding: EdgeInsets.only(
    //           bottom: MediaQuery.of(context).size.height * 0.05),
    //       alignment: Alignment.bottomCenter,
    //       child: const Image(
    //           height: 40,
    //           image: AssetImage("images/lighht_greenishscreen.png"))),
    // );
  }
}
