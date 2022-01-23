// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'courses.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseResponse _$CourseResponseFromJson(Map<String, dynamic> json) {
  return _CourseResponse.fromJson(json);
}

/// @nodoc
class _$CourseResponseTearOff {
  const _$CourseResponseTearOff();

  _CourseResponse call({required List<Course> courses}) {
    return _CourseResponse(
      courses: courses,
    );
  }

  CourseResponse fromJson(Map<String, Object?> json) {
    return CourseResponse.fromJson(json);
  }
}

/// @nodoc
const $CourseResponse = _$CourseResponseTearOff();

/// @nodoc
mixin _$CourseResponse {
  List<Course> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseResponseCopyWith<CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseResponseCopyWith<$Res> {
  factory $CourseResponseCopyWith(
          CourseResponse value, $Res Function(CourseResponse) then) =
      _$CourseResponseCopyWithImpl<$Res>;
  $Res call({List<Course> courses});
}

/// @nodoc
class _$CourseResponseCopyWithImpl<$Res>
    implements $CourseResponseCopyWith<$Res> {
  _$CourseResponseCopyWithImpl(this._value, this._then);

  final CourseResponse _value;
  // ignore: unused_field
  final $Res Function(CourseResponse) _then;

  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc
abstract class _$CourseResponseCopyWith<$Res>
    implements $CourseResponseCopyWith<$Res> {
  factory _$CourseResponseCopyWith(
          _CourseResponse value, $Res Function(_CourseResponse) then) =
      __$CourseResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Course> courses});
}

/// @nodoc
class __$CourseResponseCopyWithImpl<$Res>
    extends _$CourseResponseCopyWithImpl<$Res>
    implements _$CourseResponseCopyWith<$Res> {
  __$CourseResponseCopyWithImpl(
      _CourseResponse _value, $Res Function(_CourseResponse) _then)
      : super(_value, (v) => _then(v as _CourseResponse));

  @override
  _CourseResponse get _value => super._value as _CourseResponse;

  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_CourseResponse(
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseResponse implements _CourseResponse {
  const _$_CourseResponse({required this.courses});

  factory _$_CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseResponseFromJson(json);

  @override
  final List<Course> courses;

  @override
  String toString() {
    return 'CourseResponse(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseResponse &&
            const DeepCollectionEquality().equals(other.courses, courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(courses));

  @JsonKey(ignore: true)
  @override
  _$CourseResponseCopyWith<_CourseResponse> get copyWith =>
      __$CourseResponseCopyWithImpl<_CourseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseResponseToJson(this);
  }
}

abstract class _CourseResponse implements CourseResponse {
  const factory _CourseResponse({required List<Course> courses}) =
      _$_CourseResponse;

  factory _CourseResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseResponse.fromJson;

  @override
  List<Course> get courses;
  @override
  @JsonKey(ignore: true)
  _$CourseResponseCopyWith<_CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
class _$CourseTearOff {
  const _$CourseTearOff();

  _Course call(
      {required String id,
      required String name,
      required List<CoursePage> pages}) {
    return _Course(
      id: id,
      name: name,
      pages: pages,
    );
  }

  Course fromJson(Map<String, Object?> json) {
    return Course.fromJson(json);
  }
}

/// @nodoc
const $Course = _$CourseTearOff();

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CoursePage> get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call({String id, String name, List<CoursePage> pages});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<CoursePage>,
    ));
  }
}

/// @nodoc
abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, List<CoursePage> pages});
}

/// @nodoc
class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pages = freezed,
  }) {
    return _then(_Course(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<CoursePage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course implements _Course {
  const _$_Course({required this.id, required this.name, required this.pages});

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<CoursePage> pages;

  @override
  String toString() {
    return 'Course(id: $id, name: $name, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Course &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pages, pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pages));

  @JsonKey(ignore: true)
  @override
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseToJson(this);
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required String id,
      required String name,
      required List<CoursePage> pages}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CoursePage> get pages;
  @override
  @JsonKey(ignore: true)
  _$CourseCopyWith<_Course> get copyWith => throw _privateConstructorUsedError;
}

CoursePage _$CoursePageFromJson(Map<String, dynamic> json) {
  return _CoursePage.fromJson(json);
}

/// @nodoc
class _$CoursePageTearOff {
  const _$CoursePageTearOff();

  _CoursePage call({required String name, required String content}) {
    return _CoursePage(
      name: name,
      content: content,
    );
  }

  CoursePage fromJson(Map<String, Object?> json) {
    return CoursePage.fromJson(json);
  }
}

/// @nodoc
const $CoursePage = _$CoursePageTearOff();

/// @nodoc
mixin _$CoursePage {
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursePageCopyWith<CoursePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursePageCopyWith<$Res> {
  factory $CoursePageCopyWith(
          CoursePage value, $Res Function(CoursePage) then) =
      _$CoursePageCopyWithImpl<$Res>;
  $Res call({String name, String content});
}

/// @nodoc
class _$CoursePageCopyWithImpl<$Res> implements $CoursePageCopyWith<$Res> {
  _$CoursePageCopyWithImpl(this._value, this._then);

  final CoursePage _value;
  // ignore: unused_field
  final $Res Function(CoursePage) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CoursePageCopyWith<$Res> implements $CoursePageCopyWith<$Res> {
  factory _$CoursePageCopyWith(
          _CoursePage value, $Res Function(_CoursePage) then) =
      __$CoursePageCopyWithImpl<$Res>;
  @override
  $Res call({String name, String content});
}

/// @nodoc
class __$CoursePageCopyWithImpl<$Res> extends _$CoursePageCopyWithImpl<$Res>
    implements _$CoursePageCopyWith<$Res> {
  __$CoursePageCopyWithImpl(
      _CoursePage _value, $Res Function(_CoursePage) _then)
      : super(_value, (v) => _then(v as _CoursePage));

  @override
  _CoursePage get _value => super._value as _CoursePage;

  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
  }) {
    return _then(_CoursePage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoursePage implements _CoursePage {
  const _$_CoursePage({required this.name, required this.content});

  factory _$_CoursePage.fromJson(Map<String, dynamic> json) =>
      _$$_CoursePageFromJson(json);

  @override
  final String name;
  @override
  final String content;

  @override
  String toString() {
    return 'CoursePage(name: $name, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoursePage &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$CoursePageCopyWith<_CoursePage> get copyWith =>
      __$CoursePageCopyWithImpl<_CoursePage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursePageToJson(this);
  }
}

abstract class _CoursePage implements CoursePage {
  const factory _CoursePage({required String name, required String content}) =
      _$_CoursePage;

  factory _CoursePage.fromJson(Map<String, dynamic> json) =
      _$_CoursePage.fromJson;

  @override
  String get name;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$CoursePageCopyWith<_CoursePage> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProgress _$UserProgressFromJson(Map<String, dynamic> json) {
  return _UserProgress.fromJson(json);
}

/// @nodoc
class _$UserProgressTearOff {
  const _$UserProgressTearOff();

  _UserProgress call(
      {required String courseId,
      required int currentPage,
      required bool isOver}) {
    return _UserProgress(
      courseId: courseId,
      currentPage: currentPage,
      isOver: isOver,
    );
  }

  UserProgress fromJson(Map<String, Object?> json) {
    return UserProgress.fromJson(json);
  }
}

/// @nodoc
const $UserProgress = _$UserProgressTearOff();

/// @nodoc
mixin _$UserProgress {
  String get courseId => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isOver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProgressCopyWith<UserProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProgressCopyWith<$Res> {
  factory $UserProgressCopyWith(
          UserProgress value, $Res Function(UserProgress) then) =
      _$UserProgressCopyWithImpl<$Res>;
  $Res call({String courseId, int currentPage, bool isOver});
}

/// @nodoc
class _$UserProgressCopyWithImpl<$Res> implements $UserProgressCopyWith<$Res> {
  _$UserProgressCopyWithImpl(this._value, this._then);

  final UserProgress _value;
  // ignore: unused_field
  final $Res Function(UserProgress) _then;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? currentPage = freezed,
    Object? isOver = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isOver: isOver == freezed
          ? _value.isOver
          : isOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserProgressCopyWith<$Res>
    implements $UserProgressCopyWith<$Res> {
  factory _$UserProgressCopyWith(
          _UserProgress value, $Res Function(_UserProgress) then) =
      __$UserProgressCopyWithImpl<$Res>;
  @override
  $Res call({String courseId, int currentPage, bool isOver});
}

/// @nodoc
class __$UserProgressCopyWithImpl<$Res> extends _$UserProgressCopyWithImpl<$Res>
    implements _$UserProgressCopyWith<$Res> {
  __$UserProgressCopyWithImpl(
      _UserProgress _value, $Res Function(_UserProgress) _then)
      : super(_value, (v) => _then(v as _UserProgress));

  @override
  _UserProgress get _value => super._value as _UserProgress;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? currentPage = freezed,
    Object? isOver = freezed,
  }) {
    return _then(_UserProgress(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isOver: isOver == freezed
          ? _value.isOver
          : isOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProgress extends _UserProgress {
  const _$_UserProgress(
      {required this.courseId, required this.currentPage, required this.isOver})
      : super._();

  factory _$_UserProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UserProgressFromJson(json);

  @override
  final String courseId;
  @override
  final int currentPage;
  @override
  final bool isOver;

  @override
  String toString() {
    return 'UserProgress(courseId: $courseId, currentPage: $currentPage, isOver: $isOver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProgress &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.isOver, isOver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(courseId),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(isOver));

  @JsonKey(ignore: true)
  @override
  _$UserProgressCopyWith<_UserProgress> get copyWith =>
      __$UserProgressCopyWithImpl<_UserProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProgressToJson(this);
  }
}

abstract class _UserProgress extends UserProgress {
  const factory _UserProgress(
      {required String courseId,
      required int currentPage,
      required bool isOver}) = _$_UserProgress;
  const _UserProgress._() : super._();

  factory _UserProgress.fromJson(Map<String, dynamic> json) =
      _$_UserProgress.fromJson;

  @override
  String get courseId;
  @override
  int get currentPage;
  @override
  bool get isOver;
  @override
  @JsonKey(ignore: true)
  _$UserProgressCopyWith<_UserProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
