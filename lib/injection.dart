import 'package:clean_architecture_pattern/application/pages/advice/cubit/advicer_cubit.dart';
import 'package:clean_architecture_pattern/data/datasources/advice_remote_datasource.dart';
import 'package:clean_architecture_pattern/data/repositories/advice_repo_impl.dart';
import 'package:clean_architecture_pattern/domain/repositories/advice_repo.dart';
import 'package:clean_architecture_pattern/domain/usecases/advice_usecases.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.I; // Service Locator

Future<void> init() async {
  //applicationlayer
  //factory is everytime a new/fresh instance of that class
  sl.registerFactory(() => AdvicerCubit(adviceUsecases: sl()));

  // domain layer
  sl.registerFactory(() => AdviceUsecases(adviceRepo: sl()));

  //data layer
  sl.registerFactory<AdviceRepo>(() => AdviceRepoImpl(adviceRemoteDatasource: sl()));
  sl.registerFactory<AdviceRemoteDatasource>(() => AdviceRemoteDatasourceImpl(client: sl()));

  //externs
  sl.registerFactory(() => http.Client());
}
