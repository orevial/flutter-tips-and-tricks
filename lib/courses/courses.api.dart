import 'package:dio/dio.dart';
import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'courses.api.g.dart';

@singleton
@RestApi()
abstract class CoursesApi {
  @factoryMethod
  factory CoursesApi(
    Dio dio, {
    @Named('FlutterTipsAndTricksBaseUrl') String baseUrl,
  }) = _CoursesApi;

  @GET('/courses.json')
  Future<CourseResponse> getCourses();
}
