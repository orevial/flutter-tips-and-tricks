// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../courses/bloc/course_list_bloc.dart' as _i7;
import '../courses/bloc/course_progress_bloc.dart' as _i3;
import '../courses/courses.api.dart' as _i6;
import '../theme/bloc/theme_bloc.dart' as _i5;
import 'di.api.dart' as _i8; // ignore_for_file: unnecessary_lambdas

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
  final apiConfig = _$ApiConfig();
  gh.factory<_i3.CourseProgressBloc>(() => _i3.CourseProgressBloc());
  gh.lazySingleton<_i4.Dio>(() => apiConfig.createDio());
  gh.factory<String>(
    () => apiConfig.baseUrl,
    instanceName: 'FlutterTipsAndTricksBaseUrl',
  );
  gh.factory<_i5.ThemeBloc>(() => _i5.ThemeBloc());
  gh.singleton<_i6.CoursesApi>(_i6.CoursesApi(
    get<_i4.Dio>(),
    baseUrl: get<String>(instanceName: 'FlutterTipsAndTricksBaseUrl'),
  ));
  gh.factory<_i7.CourseListBloc>(
      () => _i7.CourseListBloc(get<_i6.CoursesApi>()));
  return get;
}

class _$ApiConfig extends _i8.ApiConfig {}
