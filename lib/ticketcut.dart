import 'package:flutter/material.dart';

class TicketCut extends StatefulWidget {
  const TicketCut({Key? key}) : super(key: key);

  @override
  State<TicketCut> createState() => _TicketCutState();
}

class _TicketCutState extends State<TicketCut> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.170),
                child: const Text("Ms. Emmanuel ",
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
              ),
              const SizedBox(height: 6),
              const Text("Employee ID",
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                      color: Color(0xff676FA3))),
              const SizedBox(height: 6),
              const Text("A76ed3121",
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: Color(0xff676FA3))),
              const SizedBox(height: 30),
              Container(
                color: const Color(0xff4dbeb5).withOpacity(0.1),
                padding: const EdgeInsets.all(18),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Applied orc",
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10,
                                  color: Color(0xff8C999A))),
                          SizedBox(height: 6),
                          Text("28th MAR,2022",
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Color(0xff676FA3)))
                        ],
                      ),
                      const VerticalDivider(
                          thickness: 0.2, width: 50, color: Color(0xff000000)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Valid till:",
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10,
                                  color: Color(0xff8C999A))),
                          SizedBox(height: 6),
                          Text("27th JUN,2022",
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Color(0xff676FA3)))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: List.generate(
                    150 ~/ 4,
                    (index) => Expanded(
                          child: Container(
                            color: index % 2 == 0
                                ? Colors.transparent
                                : Colors.grey,
                            height: 1,
                          ),
                        )),
              ),
              Container(
                padding: EdgeInsets.all(14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.done, color: Color(0xff4dbeb5), size: 20),
                        SizedBox(width: 30),
                        Text("Your Workcertain entry is approved.",
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff676FA3),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.done, color: Color(0xff4dbeb5), size: 20),
                        SizedBox(width: 30),
                        Text("Your entry pass is valid for\n90 days.",
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff676FA3),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.done, color: Color(0xff4dbeb5), size: 20),
                        SizedBox(width: 30),
                        Text(
                            "You can show the pass daily to enter\nto pro-builder office",
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff676FA3),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xff4dbeb5),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
} //

// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Expanded(
// child: Column(
// children: [
// Center(
// child: Padding(
// padding: EdgeInsets.only(
// top: MediaQuery.of(context).size.height * 0.121),
// child: const Text(
// 'Ms. Elena Goldberg',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.black,
// fontSize: 20.0,
// fontWeight: FontWeight.w700),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 5.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// userDetailsWidget('Employee ID', 'A76ed3321'),
// ],
// ),
// ),
// Container(
// color: Color(0xFFFFF5F4),
// margin: EdgeInsets.only(
// top: MediaQuery.of(context).size.width * 0.03),
// padding: EdgeInsets.only(
// top: MediaQuery.of(context).size.width * 0.03,
// bottom: MediaQuery.of(context).size.width * 0.04,
// left: 20,
// right: 20),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// userDetailsWidget('Applied on:', '28th MAR, 2022'),
// ],
// ),
// Container(
// height: 30,
// width: 1,
// color: Colors.black26,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// userDetailsWidget('Valid till:', '27th JUN, 2022'),
// ],
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// Row(
// children: List.generate(
// 150 ~/ 4,
// /(index) => Expanded(
// child: Container(
// color:
// index % 2 == 0 ? Colors.transparent : Colors.grey,
// height: 2,
// ),
// )),
// ),
// const Expanded(
// child: Padding(
// padding: EdgeInsets.only(top: 20.0),
// child: Center(
// child: Text(
// 'Please bring the\noriginal vaccination certificate(s)\nor other vaccination proof(s) with\nyou sighting when coming\nto the office. ',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.black,
// ),
// ),
// ),
// ),
// ),
// ],
// ),
