import 'package:flutter/material.dart';
import 'package:spring/post_api/user_response.dart';

class UserData extends StatefulWidget {
  UserResponse? loginresponse;
  UserData(this.loginresponse);

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                productUserTitle(),
                Column(
                  children: [
                    productUserDetails(
                        "Name : ", widget.loginresponse?.user?.name ?? ''),
                    productUserDetails(
                        "Email", widget.loginresponse?.user?.email ?? ''),
                    productUserDetails("Phone Number : ",
                        widget.loginresponse?.user?.cellNumber ?? '')
                  ],
                ),
                productCompanyTitle(),
                Column(
                  children: [
                    productCompanyDetails("Name : ",
                        widget.loginresponse?.user?.company?.name ?? ''),
                    productCompanyDetails("Name : ",
                        widget.loginresponse?.user?.company?.companyName ?? ''),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget productUserTitle() {
    return Container(
      child: const Text("User Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xff041562))),
    );
  }

  Widget productUserDetails(String title, String value) {
    return Container(
      child: Row(
        children: [
          Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff1C658C))),
          Text(value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff398AB9))),
        ],
      ),
    );
  }

  Widget productCompanyTitle() {
    return Container(
      child: const Text("Company Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xff041562))),
    );
  }

  Widget productCompanyDetails(String title1, String value1) {
    return Container(
      child: Row(
        children: [
          Text(title1,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff1C658C))),
          Text(value1,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff398AB9))),
        ],
      ),
    );
  }
}
