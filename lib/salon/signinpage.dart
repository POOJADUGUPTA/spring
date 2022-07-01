import 'package:flutter/material.dart';
import 'package:spring/salon/signuppage.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            profileImage(),
            titleText(),
            const SizedBox(height: 20),
            socialIcon(),
            const SizedBox(height: 25),
            dividerOr(),
            const SizedBox(height: 25),
            signInButton(),
            const SizedBox(height: 25),
            hintSignup(),
          ],
        ),
      ),
    );
  }

  Widget profileImage() {
    return const Image(height: 100, image: AssetImage("images/securelogo.png"));
  }

  Widget titleText() {
    return const Text("Let's you in ",
        style: TextStyle(
            letterSpacing: 1, fontSize: 30, fontWeight: FontWeight.bold));
  }

  Widget socialIcon() {
    return Column(
      children: [
        socialIconCommon("images/facebook.png", "Continue with Facebook"),
        const SizedBox(height: 10),
        socialIconCommon("images/google.png", "Continue with Google"),
        const SizedBox(height: 10),
        socialIconCommon("images/star.png", "Continue with Apple")
      ],
    );
  }

  Widget socialIconCommon(String? image, String? text) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.5, color: Colors.black12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image!, height: 20),
          const SizedBox(width: 40),
          Text(text!,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        ],
      ),
    );
  }

  Widget dividerOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          child: Divider(
            indent: 18.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
        Text(
          "or",
          style: TextStyle(color: Colors.black87),
        ),
        Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 18.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget signInButton() {
    return Container(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.250,
          right: MediaQuery.of(context).size.width * 0.250,
        ),
        decoration: BoxDecoration(
            color: const Color(0xffEC994B),
            borderRadius: BorderRadius.circular(30)),
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignupPage()));
          },
          child: const Text(
            'Sign in with password',
            style: TextStyle(fontSize: 15, color: Color(0xffFFFFFF)),
          ),
        ));
  }

  Widget hintSignup() {
    return RichText(
        text: const TextSpan(
      children: [
        TextSpan(
            text: "Don't have an account?  ",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff92A9BD),
            )),
        TextSpan(
            text: "Sign up",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: Color(0xffEC994B),
            )),
      ],
    ));
  }
}
