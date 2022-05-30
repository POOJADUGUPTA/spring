import 'package:flutter/material.dart';
import 'package:spring/employee_api/post.dart';

import 'employee_service.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  EmployeeListResponse? employeeresponse;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data form API
    getData();
  }

  getData() async {
    employeeresponse = await EmployeeService().getPosts();
    print(employeeresponse);
    if (employeeresponse != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(employeeresponse?.status ?? ""),
            Visibility(
              visible: isLoaded,
              child: ListView.builder(
                itemCount: employeeresponse?.data?.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Text(
                      employeeresponse?.data![index].employeeName ??
                          "no data found",
                      style: const TextStyle(fontSize: 24, color: Colors.green),
                    ),
                  );
                },
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
}
