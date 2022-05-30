import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spring/nomad/hostrequestform.dart';
import '../workspace_api/workspace_response.dart';
import 'godown_response.dart';
import 'user_response.dart';

class UserService {
  Future<UserResponse?> login(String email, String password) async {
    var url = Uri.parse('http://staging.praman.ai:4005/api/users/login');
    var response = await http
        .post(url, body: {'user[email]': email, 'user[password]': password});
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      var json = response.body;
      return UserResponse.fromJson(jsonDecode(json));
    }
  }

  Future<GoDownResponse?> otp(String name, String auth) async {
    var url1 = Uri.parse('http://staging.praman.ai:4005/api/v2/godowns/show');
    var msg = jsonEncode({'name': name});

    var response = await http.post(url1,
        headers: {
          'authorization': auth,
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: msg);

    print('Response body: ${response.body}');
    print('Response body: ${response.statusCode}');
    if (response.statusCode == 200) {
      var json = response.body;
      return GoDownResponse.fromJson(jsonDecode(json));
    } else {
      print("api error ${response.statusCode}");
    }
  }

  Future<WorkspaceResponse?> workspace() async {
    var url2 = Uri.parse(
        'http://vagabond.sodelsolutions.com/api/v1/workspaces/search?q="thane"');
    var response = await http.get(url2, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    });
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      var json = response.body;
      return WorkspaceResponse.fromJson(jsonDecode(json));
    } else {
      print("api error ${response.statusCode}");
    }
  }

  Future<Hostrequestform?> hostlogin(Object JsonObject) async {
    var url2 = Uri.parse(
        'https://vagabond.sodelsolutions.com/api/v1/host_request_forms');
    var response = await http.post(url2,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: json.encode(JsonObject));
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      var json = response.body;
      print("json : ${json.toString()}");
      return Hostrequestform.fromJson(jsonDecode(json));
    }
  }
}
