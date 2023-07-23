import 'package:e_book/features/home/presentation/views/book_details_view.dart';
import 'package:e_book/features/home/presentation/views/home_view.dart';
import 'package:e_book/features/home/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = 'homeView';
  static const kBookDetailsView = 'bookDetailsView';
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: kHomeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: kBookDetailsView,
            builder: (BuildContext context, GoRouterState state) {
              return const BookDetailsView();
            },
          ),
        ],
      ),
    ],
  );
}