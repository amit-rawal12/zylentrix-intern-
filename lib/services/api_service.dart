import 'dart:convert';

import 'package:zylentrix/post_model.dart';
import 'package:http/http.dart' as http;

class ApiServcie {

    static const String baseUrl = "https://jsonplaceholder.typicode.com/posts";


  Future<List<PostModel>> fetchPost() async {
    try {
      final response = await http.get(
        Uri.parse(baseUrl),
        headers: {'Content-Type': 'application/json'},

      );
      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData.map((item) => PostModel.fromJson(item)).toList();
      }else {
        throw Exception("failed  to load posts");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }
}