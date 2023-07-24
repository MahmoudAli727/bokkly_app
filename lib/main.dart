import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/view_models/Feature_books_cubit/feature_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view_models/newest/newest_cubit.dart';
import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
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
          create: (context) => FeatureCubit(
            getIt.get<Home_repo_imp>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestCubit(
            getIt.get<Home_repo_imp>(),
          ),
        )
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
