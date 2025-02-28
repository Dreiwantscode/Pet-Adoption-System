import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // GET Request
  Future<void> fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print("Title: ${data['title']}");
      } else {
        print("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      print("Network error: $e");
    }
  }

  // POST Request
  Future<void> postData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "title": "Hello Flutter",
          "body": "This is a test post",
          "userId": 1,
        }),
      );
      if (response.statusCode == 201) {
        print("Post created successfully: ${response.body}");
      } else {
        print("Failed to create post: ${response.statusCode}");
      }
    } catch (e) {
      print("Network error: $e");
    }
  }

  // PUT Request (Update Data)
  Future<void> updateData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
    try {
      final response = await http.put(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "id": 1,
          "title": "Updated Title",
          "body": "Updated body content",
          "userId": 1,
        }),
      );
      if (response.statusCode == 200) {
        print("Data updated successfully: ${response.body}");
      } else {
        print("Failed to update data: ${response.statusCode}");
      }
    } catch (e) {
      print("Network error: $e");
    }
  }

  // DELETE Request
  Future<void> deleteData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
    try {
      final response = await http.delete(url);
      if (response.statusCode == 200) {
        print("Post deleted successfully");
      } else {
        print("Failed to delete post: ${response.statusCode}");
      }
    } catch (e) {
      print("Network error: $e");
    }
  }
}
