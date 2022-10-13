// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../courses/bloc/course_list_bloc.dart' as _i6;
import '../courses/bloc/course_progress_bloc.dart' as _i3;
import '../courses/courses.api.dart' as _i4;
import '../theme/bloc/theme_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.CourseProgressBloc>(() => _i3.CourseProgressBloc());
  gh.singleton<_i4.CoursesApi>(_i4.CoursesApi());
  gh.factory<_i5.ThemeBloc>(() => _i5.ThemeBloc());
  gh.factory<_i6.CourseListBloc>(
      () => _i6.CourseListBloc(get<_i4.CoursesApi>()));
  return get;
}
