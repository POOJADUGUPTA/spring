import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spring/post_api/emppost.dart';
import 'package:spring/post_api/user_response.dart';
import 'package:spring/submissionsuccessful.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _value = false;
  bool isPressed = false;
  final formGlobalKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  UserResponse? signupresponse;
  bool isLoaded = false;

  Future getUserDetail(String email, String password) async {
    signupresponse = await UserService().login(email, password);
    print(signupresponse);
    if (signupresponse != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.050,
            right: MediaQuery.of(context).size.width * 0.050),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(),
              const SizedBox(height: 30),
              enterEmailPassword(),
              const SizedBox(height: 15),
              tickButton(),
              const SizedBox(height: 15),
              signupButton(),
              const SizedBox(height: 25),
              dividerOr(),
              const SizedBox(height: 25),
              socialLogo(),
              const SizedBox(height: 20),
              hintSignin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleText() {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.200),
      child: const Text("Create your\nAccount",
          style: TextStyle(
              letterSpacing: 0.5, fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }

  Widget enterEmailPassword() {
    return Column(
      children: [
        enterEmailPasswordCommon(Icons.email, emailcontroller, "Email",
            "Email Address can not be empty"),
        const SizedBox(height: 15),
        enterEmailPasswordCommon(Icons.lock, passwordcontroller, "Password",
            "Password can not be empty")
      ],
    );
  }

  Widget enterEmailPasswordCommon(IconData? icon,
      TextEditingController? controller, String? hinttext, String? validator) {
    return TextFormField(
        cursorColor: Colors.black,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller!,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffEFEFEF),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5)),
          hintText: hinttext!,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
          prefixIcon: Icon(icon!, color: Colors.grey, size: 20),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (validator) {
          if (validator!.isEmpty) {
            return validator;
          }
        });
  }

  Widget tickButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          autofocus: false,
          activeColor: Colors.orange,
          checkColor: Colors.white,
          // selected: _value,
          value: _value,
          onChanged: (bool? value) {
            setState(() {
              _value = value!;
            });
          },
        ),
        const SizedBox(width: 15),
        const Text("Remember me",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
                fontWeight: FontWeight.w900))
      ],
    );
  }

  Widget signupButton() {
    return Container(
        height: 45,
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.350,
          right: MediaQuery.of(context).size.width * 0.380,
        ),
        decoration: BoxDecoration(
            color: const Color(0xffEC994B),
            borderRadius: BorderRadius.circular(30)),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (
              context,
            ) =>
                    SubmissionSuccessful()));
          },
          child: const Text(
            'Sign up',
            style: TextStyle(fontSize: 15, color: Color(0xffFFFFFF)),
          ),
        ));
  }

  Widget dividerOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
        Text(
          "or continue with",
          style: TextStyle(fontSize: 12, color: Colors.black26),
        ),
        Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget socialLogo() {
    return Row(
      children: [
        socialLogoCommon("images/facebook.png"),
        socialLogoCommon("images/google.png"),
        socialLogoCommon("images/star.png")
      ],
    );
  }

  Widget socialLogoCommon(String? image) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.110),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10)),
      child: Image.asset(image!, height: 20),
    );
  }

  Widget hintSignin() {
    return Center(
      child: RichText(
          text: const TextSpan(
        children: [
          TextSpan(
              text: "Already have an account?  ",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff92A9BD),
              )),
          TextSpan(
              text: "Sign in",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0xffEC994B),
              )),
        ],
      )),
    );
  }
}
