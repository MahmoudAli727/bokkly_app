import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/view_models/Similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/bookDetailsView.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetalsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const splash_view(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const home_view(),
      ),
      GoRoute(
        path: kBookDetalsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<Home_repo_imp>(),
          ),
          child: BookDetailsView(
            books: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => Search_View(),
      ),
    ],
  );
}
