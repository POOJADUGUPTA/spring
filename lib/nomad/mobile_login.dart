import 'package:flutter/material.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({Key? key}) : super(key: key);

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff00A99D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [topLogo(), dialogContainer()],
          ),
        ),
      ),
    );
  }

  Widget topLogo() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Image(height: 40, image: AssetImage("images/nomad.png")),
              Icon(Icons.menu, size: 25, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget dialogContainer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.3,
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        insetPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.060,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                closeButton(),
                const SizedBox(height: 10),
                customTitle(),
                const SizedBox(height: 10),
                emailField(),
                const SizedBox(height: 30),
                continueButton(),
                const SizedBox(height: 15),
                googleButton(),
                const SizedBox(height: 10),
                facebookButton()
              ],
            ),
            logoImage(),
          ],
        ),
      ),
    );
  }

  Widget logoImage() {
    return Positioned(
        top: -60,
        child: Image(
            height: MediaQuery.of(context).size.height * 0.120,
            image: const AssetImage("images/notification.png")));
  }

  Widget customTitle() {
    return const Text(
      "Log In",
      style: TextStyle(
          letterSpacing: 1,
          color: Color(0xff00A99D),
          fontWeight: FontWeight.w900,
          fontSize: 30),
    );
  }

  Widget emailField() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.090,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.035,
        right: MediaQuery.of(context).size.width * 0.035,
      ),
      child: const TextField(
        cursorHeight: 20,
        autofocus: false,
        // controller:
        decoration: InputDecoration(
          hintText: "email",
          hintStyle: TextStyle(color: Color(0xff00A99D)),
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff00A99D), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff00A99D), width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderSide: BorderSide(color: Color(0xff00A99D), width: 1.5),
          ),
        ),
      ),
    );
  }

  Widget continueButton() {
    return MaterialButton(
      color: const Color(0xff00A99D),
      onPressed: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.62,
        height: MediaQuery.of(context).size.height * 0.080,
        child: const FittedBox(
          child: Text("Continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 1,
                  color: Color(0xffFFFFFF),
                  fontSize: 20,
                  height: 1.5,
                  fontWeight: FontWeight.w800)),
        ),
      ),
    );
  }

  Widget closeButton() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.012,
            vertical: MediaQuery.of(context).size.height * 0.009),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const CircleAvatar(
              radius: 14,
              child: Icon(
                Icons.close,
                size: 14,
                color: Colors.white,
              ),
              backgroundColor: Colors.grey),
        ),
      ),
    );
  }

  Widget googleButton() {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.035,
        right: MediaQuery.of(context).size.width * 0.035,
      ),
      height: MediaQuery.of(context).size.height * 0.080,
      child: MaterialButton(
          color: Colors.white,
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                'images/google.png',
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              const SizedBox(width: 10),
              const Text(
                "Continue with Google",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ],
          )),
    );
  }

  Widget facebookButton() {
    return Container(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.050,
        left: MediaQuery.of(context).size.width * 0.035,
        right: MediaQuery.of(context).size.width * 0.035,
      ),
      height: MediaQuery.of(context).size.height * 0.080,
      child: MaterialButton(
          color: Colors.white,
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                'images/facebook.png',
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              const SizedBox(width: 10),
              const Text(
                "Continue with facebook",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ],
          )),
    );
  }
}
