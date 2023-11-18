import 'package:http/http.dart' as http;
import 'package:jsonplaceholderapicall/Model/user.dart';

class ApiService {
  static var client = http.Client();
  static Future<List<User>> fetchUser() async {
    var response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return userFromJson(jsonString);
    } else {
      return throw Exception('Failed to load posts');
    }
  }
}
