import 'dart:convert';

import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:http/http.dart' as http;

const coursesSnippetUrl =
    'https://gitlab.com/stack-labs/oss/flutter-tips-and-tricks/-/snippets/2233566/raw/main/courses.json';

class CoursesApi {
  Future<CourseResponse> getCourses() {
    return http
        .get(Uri.parse(coursesSnippetUrl))
        .then((response) => response.body)
        .then((data) => jsonDecode(data))
        .then((json) => CourseResponse.fromJson(json as Map<String, dynamic>));
  }
}
