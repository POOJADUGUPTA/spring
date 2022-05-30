import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonitorProcurement extends StatefulWidget {
  const MonitorProcurement({Key? key}) : super(key: key);

  @override
  State<MonitorProcurement> createState() => _MonitorProcurementState();
}

class _MonitorProcurementState extends State<MonitorProcurement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          productHeader(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return productFarmerDetail();
              },
              itemCount: 6,
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              scrollDirection: Axis.vertical,
            ),
          ),
          productBottom(),
        ]),
      ),
    );
  }

  Widget productHeader() {
    return Container(
      padding: const EdgeInsets.only(left: 4, top: 10),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(color: const Color(0xffFFFFFF)),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                        color: Color(0xff6D8299))
                  ]),
              child: const Image(
                  height: 40, image: AssetImage('images/letter.png'))),
          Container(
            padding: const EdgeInsets.all(9),
            decoration:
                const BoxDecoration(color: Color(0xffDDDDDD), boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3),
                color: Color(0xffAAAAAA),
              )
            ]),
            child: Row(
              children: const [
                Icon(Icons.search, color: Color(0xff9D9D9D)),
                SizedBox(width: 20),
                Text("Monitor Procurement",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xff5C7AEA))),
                SizedBox(width: 15),
                Text("Prabhu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Color(0xff14279B))),
                Icon(
                  Icons.account_circle,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(13),
            decoration:
                const BoxDecoration(color: Color(0xff146356), boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3),
                color: Color(0xff6D8299),
              )
            ]),
            child: const Icon(
              Icons.menu,
              size: 15,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget productFarmerDetail() {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFFFFF),
            boxShadow: const [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                  color: Color(0xffD6E5FA))
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'Farmer Name: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0AA1DD),
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Krishna',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff000000)),
                        )
                      ]),
                ),
                Row(
                  children: const [
                    Icon(Icons.schedule, size: 15, color: Color(0xff0AA1DD)),
                    SizedBox(width: 5),
                    Text("14 Apr, 2022",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'Farmer ID: ',
                      style: TextStyle(color: Color(0xff0AA1DD), fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'F000001',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff000000)),
                        )
                      ]),
                ),
                const Text("01:45 am",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: 175,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            titlePadding: EdgeInsets.all(0),
                            title: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    child: const Image(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "https://4.imimg.com/data4/DA/HD/ANDROID-13359802/product-500x500.jpeg")),
                                  ),
                                  const Positioned(
                                    top: 10,
                                    right: 10,
                                    child: CircleAvatar(
                                      radius: 12,
                                      child: Icon(
                                        Icons.close,
                                        size: 18,
                                      ),
                                      backgroundColor: Colors.red,
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          );
                        });
                  },
                  color: const Color(0xff0AA1DD),
                  child: const Text("Current Stage",
                      style: TextStyle(fontSize: 15, color: Color(0xffFFFFFF))),
                ),
                Container(
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffD8E3E7))),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text("Weigh Slip Verification",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff000000))),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("QA Name",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text(
                  "Net Quantity",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Prashant Raj",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0xff0AA1DD))),
                Text("2,300 kg",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0xff0AA1DD))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget productBottom() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 10,
      width: 390,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffFFFFFF)),
          gradient: const LinearGradient(
            colors: [
              Color(0xff14279B),
              Color(0xff146356),
            ],
          )),
    );
  }
}
