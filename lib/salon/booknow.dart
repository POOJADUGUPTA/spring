import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BookNow extends StatefulWidget {
  IconData? icon;
  String? text;
  String? image;
  String? value;
  String? jobprofile;
  String? facilities;
  String? services;
  String? types;
  BookNow(
      {Key? key,
      this.icon,
      this.text,
      this.image,
      this.value,
      this.jobprofile,
      this.facilities,
      this.services,
      this.types})
      : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  bool isTap = false;
  int currentIndex = 0;
  int index1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: listviewPage()),
    );
  }

  Widget listviewPage() {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final imgList = imageList[index];
                    return imagescrollList(imgList);
                  }),
            ),
            DotsIndicator(
              dotsCount: 9,
              position: currentIndex + 0,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeColor: const Color(0xffEC994B),
                activeSize: const Size(25.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              listData(),
              speciaList(),
              aboutUsScrollBtn(),
              const SizedBox(height: 20),
              abc(),
            ],
          ),
        ),
      ],
    );
  }

  Widget imagescrollList(String? imgList) {
    return Stack(
      children: [
        Image(image: NetworkImage(imgList!)),
        GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Color(0xff00A99D),
                ),
              ),
            ))
      ],
    );
  }

  Widget listData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Barbarella Inova",
                style: TextStyle(
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w900,
                    fontSize: 22)),
            Container(
                height: 30,
                decoration: BoxDecoration(
                    color: const Color(0xffEC994B),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Open',
                    style: TextStyle(fontSize: 13, color: Color(0xffFFFFFF)),
                  ),
                ))
          ],
        ),
        const SizedBox(height: 5),
        listDataCommon(
            Icons.location_on, "6993 Meadow Valley Terrace, New York"),
        const SizedBox(height: 5),
        listDataCommon(Icons.star_half, "4.8 (3.279 reviews)"),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              bookNowList.length, (index) => booknowlist(bookNowList[index])),
        ),
        const SizedBox(height: 10),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget aboutUsScrollBtn() {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bookNowList.length,
          itemBuilder: (BuildContext context, int index) {
            return aboutUsScrollBtnList(bookNowList[index], index);
          }),
    );
  }

  Widget aboutUsScrollBtnList(BookNow? bookNowDetails, int index) {
    return bookNowDetails?.icon != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffEC994B),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      print(index1 = index);
                    });
                  },
                  child: Text(
                    bookNowDetails?.facilities ?? "",
                    style:
                        const TextStyle(fontSize: 13, color: Color(0xffFFFFFF)),
                  ),
                )),
          )
        : const SizedBox.shrink();
  }

  Widget booknowlist(BookNow? bookNowDetails) {
    return bookNowDetails?.icon != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0xffF9E4D4),
                  child: Icon(bookNowDetails?.icon, color: Colors.orange),
                ),
                const SizedBox(height: 5),
                Text(bookNowDetails?.text ?? "",
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 12))
              ],
            ),
          )
        : const SizedBox.shrink();
  }

  Widget speciaList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Our Specialist",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            Text("See All",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 13,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bookNowList.length,
              itemBuilder: (BuildContext context, int index) {
                return specialistBuilder(bookNowList[index]);
              }),
        ),
      ],
    );
  }

  Widget abc() {
    if (index1 == 0) {
      return aboutUsList();
    } else if (index1 == 1) {
      return ourServices();
    } else if (index1 == 2) {
      return ourPackages();
    } else if (index1 == 3) {
      return ourGallery();
    } else {
      return ourReviewsList();
    }
  }

  Widget aboutUsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
          children: [
            TextSpan(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed\n do eiusmod tempor incididunt ut labore et dolore magna\n aliqua. Ut enim ad minim veniam, quis nostrud exercitation\n ullamco laboris nisi ut aliquip. ",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
            const TextSpan(
                text: " Read More....",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color(0xffEC994B),
                )),
          ],
        )),
        const SizedBox(height: 20),
        const Text("Working Hours",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
        const SizedBox(height: 20),
        workinghoursCommon("Monday - Friday", ":   08:00 AM -21:00 PM"),
        const SizedBox(height: 10),
        workinghoursCommon("Saturday - Sunday", ":   10:00 AM 20:00 PM"),
        const SizedBox(height: 20),
        const Text("Contact Us",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
        const SizedBox(height: 20),
        const Text("(406) 555-0120",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: Colors.orange)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Our Address",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
            Text("See on Maps",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.w900)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(
              Icons.pin_drop,
              color: Colors.orange,
            ),
            const SizedBox(width: 5),
            Text("6993 Meadow Valley Terrace, New York",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.grey.shade700,
                ))
          ],
        ),
        const SizedBox(height: 20),
        Image.asset("images/Simple-Location.webp"),
        const SizedBox(height: 10),
        const Divider(thickness: 1),
        const SizedBox(height: 10),
        bookNowBtn(),
      ],
    );
  }

  Widget ourServices() {
    return Column(
      children: [
        ourCommon("Our Services"),
        const SizedBox(height: 8),
        SizedBox(
          height: 390,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: bookNowList.length,
              itemBuilder: (BuildContext context, int index) {
                return ourServicesCommon(bookNowList[index]);
              }),
        ),
        bookNowBtn()
      ],
    );
  }

  Widget ourPackages() {
    return Column(
      children: [
        ourCommon("Our Packages"),
        const SizedBox(height: 8),
        SizedBox(
          height: 450,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ourPackagesCommon();
              }),
        ),
      ],
    );
  }

  Widget ourGallery() {
    return Column(
      children: [
        ourCommon("Our Gallery"),
        const SizedBox(height: 8),
        SizedBox(
          height: 400,
          child: GridView.count(
              primary: false,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
              children: List.generate(imageList.length, (index) {
                final imgList = imageList[index];
                return Image(
                  image: AssetImage(imgList),
                );
              })),
        ),
      ],
    );
  }

  Widget ourReviews() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: const Image(
                        height: 60, image: AssetImage("images/elsa.jpeg"))),
                const SizedBox(width: 15),
                const Text("Marielle Wigington",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(width: 1.5, color: Colors.orange)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Text("5",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.orange,
                              fontSize: 15)),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                const Icon(
                  Icons.pending,
                  size: 25,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 10),
        const Text(
            "The people who work here are very friendly and\n professional.I really like it!! 👍👍",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black54)),
        const SizedBox(height: 10),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.favorite,
                  size: 30, color: isTap ? Colors.pinkAccent : Colors.grey),
              onPressed: () {
                setState(() {
                  isTap = !isTap;
                });
              },
            ),
            const SizedBox(width: 20),
            const Text("493",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w600)),
            const SizedBox(width: 35),
            const Text("3 months ago",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10,
                    fontWeight: FontWeight.w600)),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget ourReviewsList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.star_half_outlined,
                  color: Colors.orange,
                ),
                SizedBox(width: 5),
                Text("4.8(3.279 reviews)",
                    style: TextStyle(
                        color: Color(0xff383838),
                        fontSize: 15,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            const Text("See All",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 13,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        const SizedBox(height: 8),
        const Divider(thickness: 1),
        const SizedBox(height: 8),
        SizedBox(
          height: 470,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ourReviews();
              }),
        ),
      ],
    );
  }

  Widget ourServicesCommon(BookNow? serviesDetails) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(serviesDetails?.services ?? "",
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600)),
          ),
          Row(
            children: [
              Text(serviesDetails?.types ?? "",
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700)),
              const SizedBox(width: 10),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.arrow_right, color: Colors.orange),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget ourPackagesCommon() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                  height: 70, image: AssetImage("images/home_banner.jpg"))),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Haircut & Hairstyle",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                const Text("Special Offers Packages, Valid until Dec 10,2024",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Text("Rs.125",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 15,
                            fontWeight: FontWeight.w800)),
                    const SizedBox(width: 80),
                    Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xffEC994B),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffFFFFFF)),
                          ),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget workinghoursCommon(String? week, String? time) {
    return Row(
      children: [
        Text(week!,
            style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 13,
                fontWeight: FontWeight.w500)),
        const SizedBox(width: 30),
        Text(time!,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w800)),
      ],
    );
  }

  Widget listDataCommon(IconData? icon, String? text) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 18,
              color: const Color(0xffEC994B),
            ),
            const SizedBox(width: 5),
            Text(text!,
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ],
    );
  }

  Widget specialistBuilder(BookNow? bookNowDetails) {
    return bookNowDetails?.icon != null
        ? Column(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Image(
                      height: 50,
                      image: AssetImage(bookNowDetails?.image ?? ""))),
              const SizedBox(height: 5),
              Text(bookNowDetails?.value ?? "",
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w800)),
              const SizedBox(height: 5),
              Text(bookNowDetails?.jobprofile ?? "",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 9,
                      fontWeight: FontWeight.w500)),
            ],
          )
        : const SizedBox.shrink();
  }

  Widget bookNowBtn() {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: 45,
          decoration: BoxDecoration(
              color: const Color(0xffEC994B),
              borderRadius: BorderRadius.circular(30)),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Book Now',
              style: TextStyle(fontSize: 14, color: Color(0xffFFFFFF)),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget ourCommon(String? our) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(our!,
                style: const TextStyle(
                    color: Color(0xff383838),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
            const Text("See All",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 13,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        const SizedBox(height: 8),
        const Divider(thickness: 1),
      ],
    );
  }
}

final imageList = [
  "images/checkinimage.png",
  "images/Group.png",
  "images/checkinimage.png",
  "images/Group 2 (1).png",
  "images/checkinimage.png",
  "images/facilityimage.png",
  "images/home_banner.jpg",
  "images/checkinimage.png",
  "images/facilityimage.png",
];

List<BookNow> bookNowList = [
  BookNow(
    icon: Icons.explore,
    text: "Website",
    image: "images/checkinimage.png",
    value: "Nathan",
    jobprofile: "Sr. Barber",
    facilities: "About us",
    services: "Hair Cut",
    types: "44 types",
  ),
  BookNow(
    icon: Icons.sms_rounded,
    text: "Message",
    image: "images/Group.png",
    value: "Jenny",
    jobprofile: "Hair Stylist",
    facilities: "Services",
    services: "Hair Coloring",
    types: "12 types",
  ),
  BookNow(
    icon: Icons.call,
    text: "Call",
    image: "images/checkinimage.png",
    value: "Sarah",
    jobprofile: "Makeup Artist",
    facilities: "Package",
    services: "Hair Wash",
    types: "8 types",
  ),
  BookNow(
    icon: Icons.location_on,
    text: "Direction",
    image: "images/Group 2 (1).png",
    value: "Mil",
    jobprofile: "Hair Coloring",
    facilities: "Gallery",
    services: "Shaving",
    types: "22 types",
  ),
  BookNow(
    icon: Icons.share,
    text: "Share",
    image: "images/Group 2 (1).png",
    value: "Pagal Aadmi",
    jobprofile: "Hair Wash",
    facilities: "Reviews",
    services: "Skin Care",
    types: "12 types",
  ),
  BookNow(
    services: "Hair Dryer",
    types: "4 types",
  ),
  BookNow(
    services: "Face Make up",
    types: "18 types",
  ),
];
