// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    DetailedHomeItemScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DetailedHomeItemScreen());
    },
    DetailedProductRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DetailedProduct());
    },
    StoreScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const StoreScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeScreenRoute.name, path: '/'),
        RouteConfig(DetailedHomeItemScreenRoute.name,
            path: '/detailed-home-item-screen'),
        RouteConfig(DetailedProductRoute.name, path: '/detailed-product'),
        RouteConfig(StoreScreenRoute.name, path: '/store-screen')
      ];
}

/// generated route for [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute() : super(name, path: '/');

  static const String name = 'HomeScreenRoute';
}

/// generated route for [DetailedHomeItemScreen]
class DetailedHomeItemScreenRoute extends PageRouteInfo<void> {
  const DetailedHomeItemScreenRoute()
      : super(name, path: '/detailed-home-item-screen');

  static const String name = 'DetailedHomeItemScreenRoute';
}

/// generated route for [DetailedProduct]
class DetailedProductRoute extends PageRouteInfo<void> {
  const DetailedProductRoute() : super(name, path: '/detailed-product');

  static const String name = 'DetailedProductRoute';
}

/// generated route for [StoreScreen]
class StoreScreenRoute extends PageRouteInfo<void> {
  const StoreScreenRoute() : super(name, path: '/store-screen');

  static const String name = 'StoreScreenRoute';
}
