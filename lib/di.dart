import 'package:dio/dio.dart';
import 'package:eg201112469957/features/classes/data/repository/classes_repository.dart';
import 'package:get_it/get_it.dart';

import 'common/network/api_service.dart';
import 'common/network/dio_client.dart';
import 'features/auth/data/repository/Auth_repository.dart';
import 'features/grades/data/repository/grades_repository.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //Dio
  getIt.registerFactory<Dio>(() => Dio());
  getIt.registerFactory<DioClient>(() => DioClient(getIt<Dio>()));

  //api service
  getIt.registerFactory<ApiService>(() => ApiService(getIt<DioClient>()));

  // repositories
  getIt.registerFactory<AuthRepository>(
    () => AuthRepository(apiService: getIt<ApiService>()),
  );

  getIt.registerFactory<GradesRepository>(
    () => GradesRepository(apiService: getIt<ApiService>()),
  );

  getIt.registerFactory<ClassesRepository>(
    () => ClassesRepository(apiService: getIt<ApiService>()),
  );
}
