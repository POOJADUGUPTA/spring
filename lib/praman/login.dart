import 'package:flutter/material.dart';
import 'package:spring/post_api/emp.dart';
import 'package:spring/post_api/emppost.dart';
import 'package:spring/post_api/user_response.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPressed = false;
  final formGlobalKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  UserResponse? loginresponse;
  bool isLoaded = true;

  Future getData({required String email, required String password}) async {
    setState(() {
      isLoaded = false;
    });
    try {
      loginresponse = await UserService().login(email, password);
      print(loginresponse);
      setState(() {
        isLoaded = true;
      });
    } catch (error) {
      print(error);
      setState(() {
        isLoaded = true;
      });
    }
    // if (loginresponse != null) {
    //   setState(() {
    //
    //   });
    // }
  }
  // bool _validate = false;
  // String mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 810,
        width: 828,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/image 22.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            color: const Color(0xffFFFFFF),
            height: 405,
            width: 344,
            child: SingleChildScrollView(
              child: Form(
                key: formGlobalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    productImage(),
                    productTitle(),
                    productEnter(),
                    productEmailText(),
                    productBtn(),
                    productText(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget productImage() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: const Image(
          height: 25, width: 155, image: AssetImage("images/apple.png")),
    );
  }

  Widget productTitle() {
    return Container(
        padding: const EdgeInsets.only(top: 26),
        child: const Text(
          "Sign in to your account",
          style: TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Color(0xff424242)),
        ));
  }

  Widget productEnter() {
    return Container(
      margin: const EdgeInsets.only(top: 21, right: 152),
      child: const Text(
        "ENTER EMAIL ADDRESS",
        style: TextStyle(
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Color(0xff878787)),
      ),
    );
  }

  Widget productEmailText() {
    return Container(
        padding: const EdgeInsets.only(top: 5, left: 23, right: 23),
        child: Column(
          children: [
            TextFormField(
                cursorColor: Colors.black,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(color: Colors.grey),
                controller: emailcontroller,
                //   String? get _errorText {
                // final text = _controller.value.text;
                // if (text.isEmpty) {
                // return 'Can\'t be empty';
                // }
                // if (text.length < 4) {
                // return 'Too short';
                // }
                // return null;
                // }
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffEFEFEF),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  hintText: "xyz@email.com",
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (email) {
                  if (email!.isEmpty) {
                    return "Email Address Can not be empty";
                  }
                }),
            Container(
              margin: const EdgeInsets.only(top: 21, right: 182),
              child: const Text(
                "ENTER PASSWORD",
                style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Color(0xff878787)),
              ),
            ),
            TextFormField(
                cursorColor: Colors.black,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(color: Colors.grey),
                controller: passwordcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffEFEFEF),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  hintText: "Abc@123",
                ),
                keyboardType: TextInputType.visiblePassword,
                validator: (password) {
                  if (password!.isEmpty) {
                    return "Password Can not be empty";
                  }
                }),
          ],
        ));
  }

  Widget productBtn() {
    return Visibility(
      visible: isLoaded,
      child: Container(
        padding: const EdgeInsets.only(top: 21, left: 23, right: 23),
        child: MaterialButton(
          color: isPressed ? const Color(0xff07654E) : const Color(0xff838A81),
          height: 52,
          minWidth: 800,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {
            if (formGlobalKey.currentState!.validate()) {
              getData(
                      email: emailcontroller.text,
                      password: passwordcontroller.text)
                  .then((value) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (
                  context,
                ) =>
                        Empdetails(loginresponse)));
              });
              // UserService().login(emailcontroller.text, passwordcontroller.text);
              // isLoaded
              //     ? const Center(child: CircularProgressIndicator())
              //     :

            }
          },
          child: const Text(
            'Login',
            style: TextStyle(
                letterSpacing: 0.8, fontSize: 16, color: Color(0xffFFFFFF)),
          ),
        ),
      ),
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget productText() {
    return Container(
      padding: const EdgeInsets.only(top: 21, left: 2, right: 2),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xff484848),
          ),
        ),
      ),
      child: const Text(
        "Contact Us on Whatsapp",
        style: TextStyle(
          letterSpacing: 1,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xff484848),
        ),
      ),
    );
  }
}

// class SecondPage extends StatelessWidget {
//   final String? data;
//
//   const SecondPage({
//     Key? key,
//     @required this.data,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.only(top: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: const [
//               Text("Second Page",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 35,
//                       color: Colors.green)),
//               SizedBox(height: 20),
//               Text(
//                 'hello this is second page',
//                 style: TextStyle(fontSize: 25, color: Colors.black),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
