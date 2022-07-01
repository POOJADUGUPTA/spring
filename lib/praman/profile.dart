// import 'dart:html';

import 'package:flutter/material.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  bool isPressed = false;
  final formGlobalKey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final businesscontroller = TextEditingController();
  final businesstypecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              productTitle(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget productTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                iconSize: 20,
                color: Colors.blue,
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
              const SizedBox(width: 50),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text("Create Your Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.lightBlue,
                        fontSize: 20)),
              )
            ],
          ),
          const SizedBox(height: 15),
          profilePhoto(),
          const SizedBox(height: 20),
          Column(
            children: [
              textFieldCommon(Icons.account_circle, "Name", namecontroller,
                  "Enter your name", "Name can not be empty"),
              const SizedBox(height: 15),
              textFieldCommon(Icons.mail, "Email ID", emailcontroller,
                  "Enter your email ID", "Email Address can not be empty"),
              const SizedBox(height: 15),
              textFieldCommon(
                  Icons.apartment,
                  "Business Name",
                  businesscontroller,
                  "Enter your business name",
                  "Business Name can not be empty"),
              const SizedBox(height: 15),
              textFieldCommon(
                  Icons.apartment,
                  "Business Type",
                  businesstypecontroller,
                  "Enter your business type",
                  "Business Type can not be empty"),
            ],
          ),
          const SizedBox(height: 25),
          Container(
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.3, 1.0],
                      colors: [Color(0xff00C897), Color(0xff548CFF)]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(3, 4),
                        blurRadius: 4)
                  ],
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Save and Continue",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xffFFFFFF)),
                ),
              )),
        ],
      ),
    );
  }

  Widget profilePhoto() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                border: Border.all(color: Colors.lightBlueAccent)),
            child: const CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xffE8F9FD),
              child: CircleAvatar(
                radius: 73,
                child: Image(
                  image: AssetImage("images/notification.png"),
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 130,
          left: 130,
          child: CircleAvatar(
            radius: 26,
            backgroundColor: Color(0xffE8F9FD),
            child: CircleAvatar(
                radius: 23,
                child: Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }

  Widget textFieldCommon(IconData? icon, String? text,
      TextEditingController? controller, String? hinttext, String? validator) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey)),
        const SizedBox(height: 5),
        SizedBox(
          height: 50,
          child: TextFormField(
              cursorColor: Colors.black,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller!,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hoverColor: Colors.lightBlueAccent.shade100,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Color(0xffDAEAF1),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Color(0xffBDE6F1),
                    width: 1.0,
                  ),
                ),
                hintText: hinttext!,
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                prefixIcon:
                    Icon(icon!, color: const Color(0xff7FB5FF), size: 25),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (validator) {
                if (validator!.isEmpty) {
                  return validator;
                }
              }),
        ),
      ],
    );
  }
}
