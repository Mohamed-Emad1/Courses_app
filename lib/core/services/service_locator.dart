import 'package:course_learning/core/networking/dio_client.dart';
import 'package:course_learning/features/auth/data/repos/auth_repo_impl.dart';
import 'package:course_learning/features/auth/domain/repos/auth_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<DioClient>(DioClient(dio: getIt<Dio>()));

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(dioClient: getIt<DioClient>()),
  );
}
