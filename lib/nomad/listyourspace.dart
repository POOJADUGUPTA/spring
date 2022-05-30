import 'package:flutter/material.dart';
import 'package:spring/nomad/hostrequestform.dart';
import 'package:spring/post_api/emppost.dart';

class ListYourSpace extends StatefulWidget {
  const ListYourSpace({Key? key}) : super(key: key);

  @override
  State<ListYourSpace> createState() => _ListYourSpaceState();
}

class _ListYourSpaceState extends State<ListYourSpace> {
  bool isPressed = false;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final companyController = TextEditingController();
  final officelocationController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phonenoController = TextEditingController();
  final jobtitleController = TextEditingController();
  final messageController = TextEditingController();

  Hostrequestform? loginhostresponse;
  bool isLoaded = false;

  // @override
  // void initState() {
  //   super.initState();
  //   // getHostDetail();
  // }
  //
  // Future getHostDetail() async {
  //   loginhostresponse = await print(loginhostresponse);
  //   if (loginhostresponse != null) {
  //     setState(() {
  //       isLoaded = true;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00A99D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.020,
                right: MediaQuery.of(context).size.width * 0.060,
                left: MediaQuery.of(context).size.width * 0.060,
                bottom: MediaQuery.of(context).size.width * 0.020),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  titleText(),
                  texttitleField("Company"),
                  textformField(
                      value: loginhostresponse?.hostRequestForm?.company ?? '',
                      controller: companyController),
                  texttitleField("Your Office Locations"),
                  textformField(
                      value:
                          loginhostresponse?.hostRequestForm?.officeLocation ??
                              '',
                      controller: officelocationController),
                  texttitleField("First Name"),
                  textformField(
                      value:
                          loginhostresponse?.hostRequestForm?.firstName ?? '',
                      controller: firstnameController),
                  texttitleField("Last Name"),
                  textformField(
                      value: loginhostresponse?.hostRequestForm?.lastName ?? '',
                      controller: lastnameController),
                  texttitleField("Work Email"),
                  textformField(
                      value: loginhostresponse?.hostRequestForm?.workingEmail ??
                          '',
                      controller: emailController,
                      validator: (validate) {
                        if (validate!.isEmpty || !validate.contains("@")) {
                          return "Enter valid email";
                        }
                      }),
                  texttitleField("Phone Number"),
                  textformField(
                      value:
                          loginhostresponse?.hostRequestForm?.phoneNumber ?? '',
                      controller: phonenoController,
                      validator: (validate) {
                        if (validate!.isEmpty) {
                          return "Enter valid phone number";
                        }
                      }),
                  texttitleField("Job Title"),
                  textformField(
                      value: loginhostresponse?.hostRequestForm?.jobTitle ?? '',
                      controller: jobtitleController),
                  texttitleField("Message"),
                  textformField(
                      value: loginhostresponse?.hostRequestForm?.message ?? '',
                      controller: messageController,
                      validator: (validate) {
                        if (validate!.isEmpty) {
                          return "Enter some message ";
                        }
                      }),
                  submitBtn(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget titleText() {
    return Column(
      children: const [
        Text("List Your Space",
            style: TextStyle(
                letterSpacing: 1,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff00A99D))),
        SizedBox(height: 5),
        Text("Fill out our network and we will get back\nto your shortly",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0.5, fontSize: 10, color: Color(0xffC4C4C4)))
      ],
    );
  }

  Widget texttitleField(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              letterSpacing: 0.6, fontSize: 10, color: Color(0xffC4C4C4)),
        ),
      ],
    );
  }

  Widget textformField(
      {String? value,
      TextEditingController? controller,
      FormFieldValidator<String>? validator}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
            style: const TextStyle(fontSize: 12, color: Color(0xffC4C4C4)),
            decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xff00A99D), width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xff00A99D), width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Color(0xff00A99D), width: 1))),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            validator: validator),
        const SizedBox(height: 10)
      ],
    );
  }

  Widget submitBtn() {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.width * 0.010,
          top: MediaQuery.of(context).size.width * 0.010,
          left: MediaQuery.of(context).size.width * 0.366,
          right: MediaQuery.of(context).size.width * 0.366),
      decoration: BoxDecoration(
        color: const Color(0xff00A99D),
        borderRadius: BorderRadius.circular(5),
        // border: Border.all(color: Color(0xff00A99D))
      ),
      child: TextButton(
        child: const Text("Submit",
            style: TextStyle(fontSize: 12, color: Color(0xffFFFFFF))),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            UserService().hostlogin({
              "host_request_form": {
                "first_name": firstnameController.text,
                "last_name": lastnameController.text,
                "company": companyController.text,
                "job_title": jobtitleController.text,
                "working_email": emailController.text,
                "phone_number": phonenoController.text,
                "office_location": officelocationController.text,
                "message": messageController.text
              }
            });
          }
        },
      ),
    );
  }
}
