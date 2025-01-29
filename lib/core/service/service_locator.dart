import 'package:get_it/get_it.dart';
import 'package:todoapp/feature/auth/data/repo/auth_repo.dart';
import 'package:todoapp/feature/auth/presentation/cubit/auth_cubit.dart';

import '../database/cache/cach_helper.dart';

final sl = GetIt.instance;

Future setup() async {
// service
  sl.registerLazySingleton<CacheHelper>(() => CacheHelper());
// repo
  sl.registerSingleton<AuthRepo>(AuthRepo(cacheHelper: sl()));
// cubit
  sl.registerFactory(() => AuthCubit(sl()));
}
