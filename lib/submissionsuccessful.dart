import 'package:flutter/material.dart';
import 'package:spring/salon/haircutslist.dart';

class SubmissionSuccessful extends StatefulWidget {
  const SubmissionSuccessful({Key? key}) : super(key: key);

  @override
  State<SubmissionSuccessful> createState() => _SubmissionSuccessfulState();
}

class _SubmissionSuccessfulState extends State<SubmissionSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEC994B).withOpacity(0.9),
        body: Stack(alignment: Alignment.topCenter, children: [
          const Positioned.fill(
            child: Image(
              alignment: Alignment.topCenter,
              image: AssetImage("images/wlogo.png"),
            ),
          ),
          const Positioned(
              top: 220,
              child: CircleAvatar(
                  radius: 100, backgroundColor: Color(0xffFFFFFF))),
          const Positioned(
            top: 255,
            child:
                Image(height: 130, image: AssetImage("images/successful.png")),
          ),
          const Positioned(
            bottom: 205,
            child: Text(
              "Submission Successful",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          const Positioned(
            bottom: 165,
            child: Text(
              "You will get a notification",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          const Positioned(
            bottom: 145,
            child: Text(
              "regarding the outcome soon!",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Positioned(
            bottom: 80,
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2)),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HaircutsList()));
                },
                child: const Text("Proceed",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900)),
              ),
            ),
          )
        ]));
  }
}
