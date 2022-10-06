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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseResponse _$CourseResponseFromJson(Map<String, dynamic> json) {
  return _CourseResponse.fromJson(json);
}

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
abstract class _$$_CourseResponseCopyWith<$Res>
    implements $CourseResponseCopyWith<$Res> {
  factory _$$_CourseResponseCopyWith(
          _$_CourseResponse value, $Res Function(_$_CourseResponse) then) =
      __$$_CourseResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Course> courses});
}

/// @nodoc
class __$$_CourseResponseCopyWithImpl<$Res>
    extends _$CourseResponseCopyWithImpl<$Res>
    implements _$$_CourseResponseCopyWith<$Res> {
  __$$_CourseResponseCopyWithImpl(
      _$_CourseResponse _value, $Res Function(_$_CourseResponse) _then)
      : super(_value, (v) => _then(v as _$_CourseResponse));

  @override
  _$_CourseResponse get _value => super._value as _$_CourseResponse;

  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_$_CourseResponse(
      courses: courses == freezed
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseResponse implements _CourseResponse {
  const _$_CourseResponse({required final List<Course> courses})
      : _courses = courses;

  factory _$_CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseResponseFromJson(json);

  final List<Course> _courses;
  @override
  List<Course> get courses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CourseResponse(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseResponse &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  _$$_CourseResponseCopyWith<_$_CourseResponse> get copyWith =>
      __$$_CourseResponseCopyWithImpl<_$_CourseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseResponseToJson(
      this,
    );
  }
}

abstract class _CourseResponse implements CourseResponse {
  const factory _CourseResponse({required final List<Course> courses}) =
      _$_CourseResponse;

  factory _CourseResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseResponse.fromJson;

  @override
  List<Course> get courses;
  @override
  @JsonKey(ignore: true)
  _$$_CourseResponseCopyWith<_$_CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

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
abstract class _$$_CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$_CourseCopyWith(_$_Course value, $Res Function(_$_Course) then) =
      __$$_CourseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, List<CoursePage> pages});
}

/// @nodoc
class __$$_CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$$_CourseCopyWith<$Res> {
  __$$_CourseCopyWithImpl(_$_Course _value, $Res Function(_$_Course) _then)
      : super(_value, (v) => _then(v as _$_Course));

  @override
  _$_Course get _value => super._value as _$_Course;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$_Course(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<CoursePage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course implements _Course {
  const _$_Course(
      {required this.id,
      required this.name,
      required final List<CoursePage> pages})
      : _pages = pages;

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<CoursePage> _pages;
  @override
  List<CoursePage> get pages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'Course(id: $id, name: $name, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Course &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      __$$_CourseCopyWithImpl<_$_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required final String id,
      required final String name,
      required final List<CoursePage> pages}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CoursePage> get pages;
  @override
  @JsonKey(ignore: true)
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      throw _privateConstructorUsedError;
}

CoursePage _$CoursePageFromJson(Map<String, dynamic> json) {
  return _CoursePage.fromJson(json);
}

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
abstract class _$$_CoursePageCopyWith<$Res>
    implements $CoursePageCopyWith<$Res> {
  factory _$$_CoursePageCopyWith(
          _$_CoursePage value, $Res Function(_$_CoursePage) then) =
      __$$_CoursePageCopyWithImpl<$Res>;
  @override
  $Res call({String name, String content});
}

/// @nodoc
class __$$_CoursePageCopyWithImpl<$Res> extends _$CoursePageCopyWithImpl<$Res>
    implements _$$_CoursePageCopyWith<$Res> {
  __$$_CoursePageCopyWithImpl(
      _$_CoursePage _value, $Res Function(_$_CoursePage) _then)
      : super(_value, (v) => _then(v as _$_CoursePage));

  @override
  _$_CoursePage get _value => super._value as _$_CoursePage;

  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_CoursePage(
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
            other is _$_CoursePage &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_CoursePageCopyWith<_$_CoursePage> get copyWith =>
      __$$_CoursePageCopyWithImpl<_$_CoursePage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursePageToJson(
      this,
    );
  }
}

abstract class _CoursePage implements CoursePage {
  const factory _CoursePage(
      {required final String name,
      required final String content}) = _$_CoursePage;

  factory _CoursePage.fromJson(Map<String, dynamic> json) =
      _$_CoursePage.fromJson;

  @override
  String get name;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_CoursePageCopyWith<_$_CoursePage> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProgress _$UserProgressFromJson(Map<String, dynamic> json) {
  return _UserProgress.fromJson(json);
}

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
abstract class _$$_UserProgressCopyWith<$Res>
    implements $UserProgressCopyWith<$Res> {
  factory _$$_UserProgressCopyWith(
          _$_UserProgress value, $Res Function(_$_UserProgress) then) =
      __$$_UserProgressCopyWithImpl<$Res>;
  @override
  $Res call({String courseId, int currentPage, bool isOver});
}

/// @nodoc
class __$$_UserProgressCopyWithImpl<$Res>
    extends _$UserProgressCopyWithImpl<$Res>
    implements _$$_UserProgressCopyWith<$Res> {
  __$$_UserProgressCopyWithImpl(
      _$_UserProgress _value, $Res Function(_$_UserProgress) _then)
      : super(_value, (v) => _then(v as _$_UserProgress));

  @override
  _$_UserProgress get _value => super._value as _$_UserProgress;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? currentPage = freezed,
    Object? isOver = freezed,
  }) {
    return _then(_$_UserProgress(
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
            other is _$_UserProgress &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.isOver, isOver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(courseId),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(isOver));

  @JsonKey(ignore: true)
  @override
  _$$_UserProgressCopyWith<_$_UserProgress> get copyWith =>
      __$$_UserProgressCopyWithImpl<_$_UserProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProgressToJson(
      this,
    );
  }
}

abstract class _UserProgress extends UserProgress {
  const factory _UserProgress(
      {required final String courseId,
      required final int currentPage,
      required final bool isOver}) = _$_UserProgress;
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
  _$$_UserProgressCopyWith<_$_UserProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
