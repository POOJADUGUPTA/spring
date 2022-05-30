import 'package:flutter/material.dart';

class Mynotify extends StatefulWidget {
  const Mynotify({Key? key}) : super(key: key);

  @override
  State<Mynotify> createState() => _MynotifyState();
}

class _MynotifyState extends State<Mynotify> {
  @override
  Widget build(BuildContext context) {
    return myNotify();
  }

  Widget myNotify() {
    return Scaffold(
      body: Column(
        children: [
          productTitle(),
          Expanded(child: productline1()),
        ],
      ),
    );
  }

  Widget productTitle() {
    return Container(
      padding: const EdgeInsets.only(right: 280, top: 8, bottom: 8),
      child: const Text(
        "My Notifications",
        style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 24,
            color: Color(0xff5E5E5E)),
      ),
    );
  }

  Widget productline1() {
    return ListView.builder(
      itemCount: notificationDetails.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        NotificationDetails notificationDetailsData =
            notificationDetails[index];
        return Container(
          color: const Color(0xffBFFFBE),
          margin: const EdgeInsets.only(top: 1, left: 2, right: 2),
          padding:
              const EdgeInsets.only(left: 5, top: 8, bottom: 10, right: 20),
          child: GestureDetector(
            onTap: () => print(index),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Flexible(
                  child: Text(notificationDetailsData.title ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff5E5E5E))),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(notificationDetailsData.date ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff5E5E5E))),
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}

List<NotificationDetails> notificationDetails = [
  NotificationDetails('Yogendra Yadav has edited Onion Lot #2398.', "12.42 PM"),
  NotificationDetails('Your Onion Lot #2401 has been processed.', "12.35 PM"),
  NotificationDetails(
      'Your Onion Lot #2400 has been viewed 5 times.', "Yesterday"),
  NotificationDetails(
      'Yogendra Yadav has shared Onion Lot #2398 with you.', 'Yesterday'),
  NotificationDetails(
      'Yogendra Yadav has added you as a buyer. You will now receive notifications when they create lots.',
      '21 Dec'),
  NotificationDetails('Your Onion Lot #2400 has been processed.', '21 Dec'),
  NotificationDetails(
      'Manish Agarwal created their first lot after using your referral link! You’ve earned ₹ 50!',
      '21 Dec'),
  NotificationDetails(
      'Manish Agarwal joined Praman using your referral link. You will receive ₹ 50 when they create their first lot.',
      '21 Dec'),
];

class NotificationDetails {
  String? title;
  String? date;

  NotificationDetails(this.title, this.date);
}
