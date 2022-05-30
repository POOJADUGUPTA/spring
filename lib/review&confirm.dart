import 'package:flutter/material.dart';
import 'package:spring/submissionsuccessful.dart';

class ReviewAndConfirm extends StatefulWidget {
  const ReviewAndConfirm({Key? key}) : super(key: key);

  @override
  State<ReviewAndConfirm> createState() => _ReviewAndConfirmState();
}

class _ReviewAndConfirmState extends State<ReviewAndConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff262643).withOpacity(0.95),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const Image(
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              image: AssetImage("images/dark_bluescreen.png"),
            ),
            Container(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Color(0xffFFFFFF),
                    ),
                    SizedBox(width: 80),
                    Text(
                      "Reviews and confirm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xffFFFFFF)),
                    ),
                  ],
                )),
            ListView.builder(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return productCertificate(index + 1);
                }),
            productBottom(),
          ],
        ),
      ),
    );
  }

  Widget productCertificate(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 30),
          child: Text("CERTIFICATE ${index.toString()}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Color(0xffFFFFFF))),
        ),
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffFFFFFF)),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            certificateData(
                title: "Type: ", value: "Modern Spikevax", icon: Icons.edit),
            const SizedBox(height: 5),
            const Divider(thickness: 0.8, color: Color(0xffB7CADB)),
            const SizedBox(height: 5),
            certificateData(title: "Date: ", value: "11-May-2022")
          ]),
        ),
      ],
    );
  }

  Widget certificateData({String? title, String? value, IconData? icon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Color(0xff7F8487)),
            ),
            const SizedBox(height: 5),
            Text(value ?? "",
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 15),
          child: GestureDetector(
            child: Icon(
              icon,
              size: 15,
              color: const Color(0xff7D1E6A),
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }

  Widget productBottom() {
    return Positioned(
      bottom: 100,
      child: Container(
        height: 50,
        width: 330,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff2155CD)),
        child: MaterialButton(
          minWidth: 325,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SubmissionSuccessful()));
          },
          child: const Text(" + Add more",
              style: TextStyle(fontSize: 13, color: Color(0xffFFFFFF))),
        ),
      ),
    );
  }
}

// Positioned(
//   child: Text(
//     "CERTIFICATE 2:",
//     style: TextStyle(fontSize: 10, color: Color(0xffFFFFFF)),
//   ),
// ),
// Positioned(
//     child: Container(
//   child: Column(
//     children: [
//       Text(
//         "Type: ",
//         style: TextStyle(fontSize: 8, color: Color(0xff7F8487)),
//       ),
//       Row(
//         children: [
//           Text("Moderna Spikevax",
//               style: TextStyle(
//                   fontSize: 13, fontWeight: FontWeight.bold)),
//           Icon(
//             Icons.edit,
//             color: Color(0xff7D1E6A),
//           ),
//         ],
//       ),
//       Text("Data",
//           style: TextStyle(fontSize: 8, color: Color(0xff7F8487))),
//       Row(
//         children: [
//           Text("11-May-2021",
//               style: TextStyle(
//                   fontSize: 13, fontWeight: FontWeight.bold)),
//           Icon(
//             Icons.edit,
//             color: Color(0xff7D1E6A),
//           ),
//         ],
//       ),
//     ],
//   ),
// )),
