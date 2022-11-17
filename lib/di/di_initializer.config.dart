// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../courses/bloc/course_list_bloc.dart' as _i8;
import '../courses/bloc/course_progress_bloc.dart' as _i4;
import '../courses/courses.api.dart' as _i7;
import '../navigation/app_router.dart' as _i3;
import '../theme/bloc/theme_bloc.dart' as _i6;
import 'di.api.dart' as _i9; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.factory<_i4.CourseProgressBloc>(() => _i4.CourseProgressBloc());
  gh.lazySingleton<_i5.Dio>(() => apiConfig.createDio());
  gh.factory<String>(
    () => apiConfig.baseUrl,
    instanceName: 'FlutterTipsAndTricksBaseUrl',
  );
  gh.factory<_i6.ThemeBloc>(() => _i6.ThemeBloc());
  gh.singleton<_i7.CoursesApi>(_i7.CoursesApi(
    get<_i5.Dio>(),
    baseUrl: get<String>(instanceName: 'FlutterTipsAndTricksBaseUrl'),
  ));
  gh.factory<_i8.CourseListBloc>(
      () => _i8.CourseListBloc(get<_i7.CoursesApi>()));
  return get;
}

class _$ApiConfig extends _i9.ApiConfig {}
