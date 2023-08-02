import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/Domain/use_case/fetch_feature_books_uase_case.dart';
import 'package:bookly_app/Features/home/Domain/use_case/fetch_newest_books_use_case.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_d_impl.dart';
import 'package:bookly_app/Features/home/presentation/view_models/FeaturedBook_d/featured_book_d_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view_models/NewestBooks_D/newest_book_d_cubit.dart';
import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/Simple_observe.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  setup();
  await Hive.initFlutter();
  Hive.registerAdapter(bookentityAdapter());
  await Hive.openBox<book_entity>(kFeaturedBox);
  await Hive.openBox<book_entity>(kNewestBox);
  Bloc.observer = SimpleObserver();
  runApp(const BokklyApp());
}

class BokklyApp extends StatelessWidget {
  const BokklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookDCubit(
            FetchFeaturedBooksUseCase(
              getIt.get<HomeRepoImpldomain>(),
            ),
          )..fetchFeaturedBook_d(),
        ),
        BlocProvider(
          create: (context) => NewestBookDCubit(
            FetchNewestBooksUseCase(
              getIt.get<HomeRepoImpldomain>(),
            ),
          )..fetchNewestBook_d(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            )),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
