import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/core/utils/Api_Services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Api_Services>(Api_Services(Dio()));
  getIt.registerSingleton<Home_repo_imp>(
      Home_repo_imp(getIt.get<Api_Services>()));
}