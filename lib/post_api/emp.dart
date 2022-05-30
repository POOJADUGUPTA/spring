import 'package:flutter/material.dart';
import 'package:spring/post_api/emppost.dart';
import 'package:spring/post_api/user.dart';
// import 'package:spring/post_api/workspace_response.dart';

import 'godown_response.dart';
import 'user_response.dart';
// import 'workspace_response.dart';

class Empdetails extends StatefulWidget {
  UserResponse? userResponse;
  Empdetails(this.userResponse);

  @override
  State<Empdetails> createState() => _EmpdetailsState();
}

class _EmpdetailsState extends State<Empdetails> {
  // WorkspaceResponse? sitedetails;
  // var isLoaded = false;

  GoDownResponse? empresponse1;
  // bool isLoaded = false;

  UserResponse? empresponse;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    // getData();
    getGodwonData(name: "WG 12 - FG06");
  }

  getData() async {
    empresponse = await UserService().login('7777777711', 'password1');
    print(empresponse);
    if (empresponse != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  getGodwonData({required String name}) async {
    setState(() {
      isLoaded = false;
    });

    try {
      empresponse1 = await UserService()
          .otp(name, widget.userResponse?.user?.authToken ?? '');
      print(empresponse1);
      setState(() {
        isLoaded = true;
      });
    } catch (error) {
      print(error);
      setState(() {
        isLoaded = true;
      });
    }
  }

  // getGodwonData() async {
  //   empresponse1 = await UserService().otp();
  //   print(empresponse1);
  //   if (empresponse1 != null) {
  //     setState(() {
  //       isLoaded = true;
  //     });
  //   }
  // }

  // getspaceworkData() async {
  //   sitedetails = await UserService().signup();
  //   print(sitedetails);
  //   if (sitedetails != null) {
  //     setState(() {
  //       isLoaded = true;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color(0xffF1F6F9),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                    color: Color(0xff7C99AC),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffCCD1E4), shape: BoxShape.circle),
                      height: 50,
                    ),
                    Text(widget.userResponse?.user?.fullName ?? '',
                        style: const TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const ListTile(
                title: Text(
                  "User Detail",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff495464)),
                ),
              ),
              ListTile(
                title: Container(
                  height: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Name : ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                      Text(
                        widget.userResponse?.user?.name ?? '',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  height: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Email : ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                      Text(
                        widget.userResponse?.user?.email ?? '',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Full Name : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff9BA4B4)),
                    ),
                    Text(
                      widget.userResponse?.user?.fullName ?? '',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff9BA4B4)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ListTile(
                title: Text(
                  "Company Detail",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff495464)),
                ),
              ),
              ListTile(
                title: Container(
                  height: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Name : ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                      Text(
                        widget.userResponse?.user?.company?.name ?? '',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  height: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Company-Name : ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                      Text(
                        widget.userResponse?.user?.company?.companyName ?? '',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9BA4B4)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.only(left: 80),
          child: const Text(
            'Praman',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: const Color(0xffA2DBFA),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            productTitle(),
            Visibility(
              visible: isLoaded,
              child: Column(
                children: [
                  productText("Name : ", empresponse1?.user?.name ?? ''),
                  productText(
                      "DisplayName : ", empresponse1?.user?.displayname ?? ''),
                  productText("Parent : ", empresponse1?.user?.parent ?? ''),
                  productText(
                      "Latitude : ", empresponse1?.user?.latitude ?? ''),
                  productText(
                      "Longitute : ", empresponse1?.user?.longitude ?? ''),
                  productText("StorageCapacity : ",
                      empresponse1?.user?.storagecapacity.toString() ?? ''),
                  productText("StorageUsed : ",
                      empresponse1?.user?.storageused.toString() ?? ''),
                  productText("StorageAvailable : ",
                      empresponse1?.user?.storageavailable.toString() ?? ''),
                  productText("FpcName : ", empresponse1?.user?.fpcname ?? ''),
                  productText("SaName : ", empresponse1?.user?.saname ?? ''),
                  productText("Address : ",
                      empresponse1?.user?.showopenbtn.toString() ?? ''),
                ],
              ),
              replacement: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productTitle() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: const Text("GoDown Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xff041562))),
    );
  }

  Widget productText(String title, String value) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff1C658C))),
          Text(value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff398AB9))),
        ],
      ),
    );
  }
}

// MaterialButton(
//   onPressed: () {
//     print("clicked");
//     UserService().signup();
//   },
//   child: const Text(
//     "signup",
//     style: TextStyle(fontSize: 25, color: Colors.green),
//   ),
// ),

// Leading: GestureDetector(
//   onTap: () {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => (UserData(widget.userResponse))));
//   },
//   child: const Icon(
//     Icons.menu,
//   ),
// ),
