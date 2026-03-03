import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class ApiService {
  static const String baseUrl =
      "https://jsonplaceholder.typicode.com/posts";

  // GET
  static Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load posts");
    }
  }

  // POST
  static Future<PostModel> createPost(PostModel post) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
      body: json.encode(post.toJson()),
    );

    if (response.statusCode == 201) {
      return PostModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to create post");
    }
  }

  // PUT
  static Future<PostModel> updatePost(PostModel post) async {
    final response = await http.put(
      Uri.parse("$baseUrl/${post.id}"),
      headers: {"Content-Type": "application/json"},
      body: json.encode(post.toJson()),
    );

    if (response.statusCode == 200) {
      return PostModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to update post");
    }
  }

  // DELETE
  static Future<void> deletePost(int id) async {
    final response =
    await http.delete(Uri.parse("$baseUrl/$id"));

    if (response.statusCode != 200) {
      throw Exception("Failed to delete post");
    }
  }
}