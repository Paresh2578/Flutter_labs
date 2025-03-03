
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Exam/User.dart';
class Apiservice{
  String baseUrl = "https://67b2df24bc0165def8ceea86.mockapi.io/users";

  Future<List<User>> getAllUser() async {
    List<User> users = [];
    var res =await http.get(Uri.parse(baseUrl));
    List<dynamic> data = jsonDecode(res.body);
    data.forEach((element) {
      users.add(User.fromJson(element));
    },);
    return users;
  }

  Future<User> getUserById(String id) async {
    var res = await http.get(Uri.parse('$baseUrl/$id'));
    dynamic u = jsonDecode(res.body);
    User user = User.fromJson(u);
    return user;
  }
  Future<void> addUser(User user) async {
    var res =await http.post(
      Uri.parse(baseUrl),
      body: (user.toJson())
    );
  }
}
