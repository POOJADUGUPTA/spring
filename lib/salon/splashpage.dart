import 'package:flutter/material.dart';
import 'package:spring/salon/signinpage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigatetosigninpage();
  }

  navigatetosigninpage() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SigninPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEC994B),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                height: 400,
                image: AssetImage("images/clogo.jpeg"),
              )
            ]));
  }
}
