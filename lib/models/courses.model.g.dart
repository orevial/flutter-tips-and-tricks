// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseResponse _$$_CourseResponseFromJson(Map<String, dynamic> json) =>
    _$_CourseResponse(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseResponseToJson(_$_CourseResponse instance) =>
    <String, dynamic>{
      'courses': instance.courses,
    };

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String,
      name: json['name'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => CoursePage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pages': instance.pages,
    };

_$_CoursePage _$$_CoursePageFromJson(Map<String, dynamic> json) =>
    _$_CoursePage(
      name: json['name'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_CoursePageToJson(_$_CoursePage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
    };

_$_UserProgress _$$_UserProgressFromJson(Map<String, dynamic> json) =>
    _$_UserProgress(
      courseId: json['courseId'] as String,
      currentPage: json['currentPage'] as int,
      isOver: json['isOver'] as bool,
    );

Map<String, dynamic> _$$_UserProgressToJson(_$_UserProgress instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'currentPage': instance.currentPage,
      'isOver': instance.isOver,
    };
