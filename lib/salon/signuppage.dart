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
        TextFormField(
            cursorColor: Colors.black,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: emailcontroller,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffEFEFEF),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5)),
              hintText: "Email",
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
              icon: const Icon(Icons.email, color: Colors.grey, size: 20),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (email) {
              if (email!.isEmpty) {
                return "Email Address Can not be empty";
              }
            }),
        const SizedBox(height: 15),
        TextFormField(
            cursorColor: Colors.black,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: passwordcontroller,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffEFEFEF),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5)),
              hintText: "Password",
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
              icon: const Icon(Icons.lock, color: Colors.grey, size: 20),
            ),
            keyboardType: TextInputType.visiblePassword,
            validator: (password) {
              if (password!.isEmpty) {
                return "Password Can not be empty";
              }
            }),
      ],
    );
  }

  Widget tickButton() {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.300),
      child: Row(
        children: const [
          Icon(
            Icons.check_box_outline_blank,
            color: Color(0xffEC994B),
          ),
          SizedBox(width: 15),
          Text("Remember me",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                  fontWeight: FontWeight.w900))
        ],
      ),
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
        Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.200),
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.040,
            right: MediaQuery.of(context).size.width * 0.040,
            top: MediaQuery.of(context).size.width * 0.020,
            bottom: MediaQuery.of(context).size.width * 0.020,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset("images/facebook.jpeg", height: 20),
        ),
        const SizedBox(width: 15),
        Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.040,
            right: MediaQuery.of(context).size.width * 0.040,
            top: MediaQuery.of(context).size.width * 0.020,
            bottom: MediaQuery.of(context).size.width * 0.020,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset("images/google.png", height: 20),
        ),
        const SizedBox(width: 15),
        Container(
          margin:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.200),
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.040,
            right: MediaQuery.of(context).size.width * 0.040,
            top: MediaQuery.of(context).size.width * 0.020,
            bottom: MediaQuery.of(context).size.width * 0.020,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset("images/apple.jpeg", height: 20),
        ),
      ],
    );
  }

  Widget hintSignin() {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.220),
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
