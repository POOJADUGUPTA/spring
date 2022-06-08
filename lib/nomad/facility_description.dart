import 'package:flutter/material.dart';

class FacilityDescription extends StatefulWidget {
  const FacilityDescription({Key? key}) : super(key: key);

  @override
  State<FacilityDescription> createState() => _FacilityDescriptionState();
}

class _FacilityDescriptionState extends State<FacilityDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageView(),
              const SizedBox(height: 10),
              textTitle(),
              const SizedBox(height: 10),
              reviewshostField(),
              const SizedBox(height: 10),
              Container(
                height: 350,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return listviewDetail();
                    }),
              ),
              const SizedBox(height: 10),
              bottomField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageView() {
    return Stack(children: [
      const Image(
          fit: BoxFit.fitWidth, image: AssetImage("images/facilityimage.png")),
      Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              maxRadius: 20,
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back, size: 25, color: Color(0xff00A99D)),
            ),
            Row(
              children: const [
                CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.supervisor_account,
                      size: 25, color: Color(0xff00A99D)),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite_border,
                      size: 25, color: Color(0xff00A99D)),
                )
              ],
            )
          ],
        ),
      )
    ]);
  }

  Widget textTitle() {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.040),
      child: const Text("Entire rental unit hosted by\nModern Workspaces",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff00A99D))),
    );
  }

  Widget reviewshostField() {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.040),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Row(
                    children: const [
                      Image(height: 15, image: AssetImage("images/star.png")),
                      SizedBox(width: 5),
                      Text("4.96  (21 reviews)",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffC4C4C4)))
                    ],
                  ),
                  const SizedBox(width: 20),
                  Row(
                    children: const [
                      Image(
                          height: 15,
                          image: AssetImage("images/smallstar.png")),
                      SizedBox(width: 5),
                      Text("Superhost",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffC4C4C4)))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Color(0xffC4C4C4),
                      Color(0xffFFFFFF),
                    ],
                  )),
                  height: 3,
                  width: 220)
            ],
          ),
          const SizedBox(width: 80),
          const Image(height: 60, image: AssetImage("images/circlelogo.png"))
        ],
      ),
    );
  }

  Widget listviewDetail() {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.040),
      child: Column(
        children: [
          listviewCommonDetail(),
        ],
      ),
    );
  }

  Widget listviewCommonDetail() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(height: 50, image: AssetImage("images/wifi.png")),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Fast Wifi",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0xff00A99D))),
                SizedBox(height: 5),
                Text(
                    "A t 291Mbps, you can take video calls and\nstream for your whole group.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffC4C4C4)))
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Image(height: 50, image: AssetImage("images/batch.png")),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Modern Workspaces\nis a superhost",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0xff00A99D))),
                SizedBox(height: 5),
                Text(
                    "Superhost are experienced, highly rated host\nwho are committed to providing great\nstays for guests.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffC4C4C4)))
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Image(height: 55, image: AssetImage("images/location.png")),
            const SizedBox(width: 34),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Great Location",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0xff00A99D))),
                SizedBox(height: 5),
                Text("95% of recent guests gave the location a\n5-star rating.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffC4C4C4)))
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget bottomField() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff0F6D64),
      height: 80,
      child: Row(
        children: [
          Column(
            children: const [
              Text("33.45 AUD Total",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF))),
              SizedBox(height: 5),
              Text("1.5 Hours",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xffFFFFFF)))
            ],
          ),
          const SizedBox(width: 150),
          Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5)),
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Reserve",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff00A99D)))))
        ],
      ),
    );
  }
}
