import 'package:spring/services/PostResponse.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(uri);
    print(response);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
