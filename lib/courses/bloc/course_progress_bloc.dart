import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'course_progress_bloc.freezed.dart';

part 'course_progress_event.dart';

part 'course_progress_state.dart';

class CourseProgressBloc
    extends Bloc<CourseProgressEvent, CourseProgressState> {
  CourseProgressBloc() : super(const CourseProgressState.initial()) {
    on<CourseProgressEvent>(
      (event, emit) => event.map(
        load: (event) => _onLoad(event, emit),
        updateProgress: (event) => _onUpdateProgress(event, emit),
      ),
    );
    add(const CourseProgressEvent.load());
  }

  Future<void> _onLoad(
    _Load event,
    Emitter<CourseProgressState> emit,
  ) async {
    final progresses = await SharedPreferences.getInstance().then(
      (prefs) => prefs
          .getKeys()
          .where((key) => key.startsWith('course_'))
          .map(
            (key) => UserProgress.fromJson(
              jsonDecode(prefs.getString(key)!) as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
    emit(CourseProgressState.content(progresses));
  }

  void _onUpdateProgress(
    _UpdateProgress event,
    Emitter<CourseProgressState> emit,
  ) {
    final progress = UserProgress(
      courseId: event.courseId,
      currentPage: event.currentPage,
      isOver: event.isOver,
    );
    SharedPreferences.getInstance().then(
      (prefs) => prefs.setString(
        'course_${progress.courseId}',
        jsonEncode(progress.toJson()),
      ),
    );
    add(const CourseProgressEvent.load());
  }
}
