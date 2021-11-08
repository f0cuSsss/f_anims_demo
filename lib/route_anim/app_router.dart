import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations_demo/route_anim/screens/home/detailed_home_item_screen.dart';
import 'package:flutter_animations_demo/route_anim/screens/home/home_screen.dart';
import 'package:flutter_animations_demo/route_anim/screens/store/detailed_product.dart';
import 'package:flutter_animations_demo/route_anim/screens/store/store_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: DetailedHomeItemScreen),
    AutoRoute(page: DetailedProduct),
    AutoRoute(page: StoreScreen),
  ],
)
class AppRouter extends _$AppRouter {}
