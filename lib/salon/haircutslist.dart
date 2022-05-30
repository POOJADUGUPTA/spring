import 'package:flutter/material.dart';
import 'package:spring/salon/booknow.dart';

class HaircutsList extends StatefulWidget {
  const HaircutsList({Key? key}) : super(key: key);

  @override
  State<HaircutsList> createState() => _HaircutsListState();
}

class _HaircutsListState extends State<HaircutsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.050,
            right: MediaQuery.of(context).size.width * 0.050,
            left: MediaQuery.of(context).size.width * 0.050,
          ),
          child: Column(
            children: [
              textTitle(),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return textContainer();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textTitle() {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 25,
              color: Colors.black54,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BookNow()));
              },
            ),
            const SizedBox(width: 10),
            const Text("Haircuts",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20))
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.050),
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Icon(Icons.search, size: 25, color: Colors.grey.shade400),
              const SizedBox(width: 10),
              Text("Search",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400))
            ],
          ),
        )
      ],
    );
  }

  Widget textContainer() {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: const Image(
                        height: 70, image: AssetImage("images/hair.jpeg"))),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.040),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Belle Curls",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text("0993 Novick Parkway",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade500)),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color(0xffEC994B),
                          ),
                          const SizedBox(width: 5),
                          Text("1.2km",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.star_half,
                            size: 15,
                            color: Color(0xffEC994B),
                          ),
                          const SizedBox(width: 5),
                          Text("4.8",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
