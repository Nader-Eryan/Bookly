import 'package:dio/dio.dart';
import 'package:e_book/core/utils/api_service.dart';
import 'package:e_book/features/home/data/repos/home_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
