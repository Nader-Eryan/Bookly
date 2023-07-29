import 'package:e_book/core/utils/service_locator.dart';
import 'package:e_book/features/home/data/models/book_model/book_model.dart';
import 'package:e_book/features/home/data/repos/home_repo_implementation.dart';
import 'package:e_book/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:e_book/features/home/presentation/views/book_details_view.dart';
import 'package:e_book/features/home/presentation/views/home_view.dart';
import 'package:e_book/features/home/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/search/presentation/views/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: ((context, state) => const SearchView()),
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                SimilarBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(
              bookModel: state.extra as BookModel,
            ),
          );
        },
      ),
    ],
  );
}
