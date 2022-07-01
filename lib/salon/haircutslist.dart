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
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookNow()));
                          },
                          child: textContainer());
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
                  Navigator.of(context).pop();
                }),
            const SizedBox(width: 10),
            const Text("Haircuts",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20))
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xffDAEAF1),
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              hintText: 'Search',
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
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
                        height: 70,
                        image: AssetImage(
                            "images/coworkers-team-working-brainstorming-concept 1.png"))),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
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
