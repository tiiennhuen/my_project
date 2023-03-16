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
    MyAppRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const MyApp(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MyAppRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [MyApp]
class MyAppRoute extends PageRouteInfo<void> {
  const MyAppRoute()
      : super(
          MyAppRoute.name,
          path: '/',
        );

  static const String name = 'MyAppRoute';
}
