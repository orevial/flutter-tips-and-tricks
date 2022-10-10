import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutters_tips_and_tricks/courses/courses.api.dart';
import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_list_bloc.freezed.dart';

part 'course_list_event.dart';

part 'course_list_state.dart';

class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  final CoursesApi api;

  CourseListBloc(this.api) : super(const CourseListState.initial()) {
    on<CourseListEvent>(
      (event, emit) => event.map(
        load: (event) => _onLoad(event, emit),
        retry: (event) => _onRetry(event, emit),
      ),
    );

    add(const CourseListEvent.load());
  }

  Future<void> _onLoad(
    _Load event,
    Emitter<CourseListState> emit,
  ) async {
    emit(const CourseListState.loading());

    try {
      final courses = await api.getCourses();
      emit(CourseListState.content(courses));
    } on Exception {
      emit(const CourseListState.error());
    }
  }

  Future<void> _onRetry(
    _Retry event,
    Emitter<CourseListState> emit,
  ) async {
    add(const CourseListEvent.load());
  }
}
