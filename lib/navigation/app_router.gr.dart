// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CoursesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CoursesPage(),
      );
    },
    CourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CourseDetailsPage(
          course: args.course,
          initialPage: args.initialPage,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CoursesRoute.name,
          path: '/',
        ),
        RouteConfig(
          CourseDetailsRoute.name,
          path: '/course-details-page',
        ),
      ];
}

/// generated route for
/// [CoursesPage]
class CoursesRoute extends PageRouteInfo<void> {
  const CoursesRoute()
      : super(
          CoursesRoute.name,
          path: '/',
        );

  static const String name = 'CoursesRoute';
}

/// generated route for
/// [CourseDetailsPage]
class CourseDetailsRoute extends PageRouteInfo<CourseDetailsRouteArgs> {
  CourseDetailsRoute({
    required Course course,
    required int initialPage,
    Key? key,
  }) : super(
          CourseDetailsRoute.name,
          path: '/course-details-page',
          args: CourseDetailsRouteArgs(
            course: course,
            initialPage: initialPage,
            key: key,
          ),
        );

  static const String name = 'CourseDetailsRoute';
}

class CourseDetailsRouteArgs {
  const CourseDetailsRouteArgs({
    required this.course,
    required this.initialPage,
    this.key,
  });

  final Course course;

  final int initialPage;

  final Key? key;

  @override
  String toString() {
    return 'CourseDetailsRouteArgs{course: $course, initialPage: $initialPage, key: $key}';
  }
}
