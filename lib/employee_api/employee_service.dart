import 'package:spring/employee_api/post.dart';
import 'package:http/http.dart' as http;

class EmployeeService {
  Future<EmployeeListResponse?> getPosts() async {
    var uri = Uri.parse('https://dummy.restapiexample.com/api/v1/employees');
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return EmployeeListResponse.fromJson(json);
    }
  }
}
