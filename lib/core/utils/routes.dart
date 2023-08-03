import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/presentation/views/bookDetailsView.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
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
        builder: (context, state) => BookDetailsView(
          book: state.extra as book_entity,
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const Search_View(),
      ),
    ],
  );
}
