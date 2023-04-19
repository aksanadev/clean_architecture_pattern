import 'dart:developer';

import 'package:clean_architecture_pattern/data/datasources/advice_remote_datasource.dart';
import 'package:clean_architecture_pattern/data/exceptions/exceptions.dart';
import 'package:clean_architecture_pattern/domain/failures/failures.dart';
import 'package:clean_architecture_pattern/domain/entities/advice_entity.dart';
import 'package:clean_architecture_pattern/domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDatasource adviceRemoteDatasource;
  
  AdviceRepoImpl({required this.adviceRemoteDatasource});

  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource() async {
    try {
      final result = await adviceRemoteDatasource.getRandomAdviceFromApi();
      return right(result);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on CacheException catch (_) {
      return left(CacheFailure());
    } on GeneralExeption catch (_) {
      return left(GeneralFailure());
    }
  }
}
