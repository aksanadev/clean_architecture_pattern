import 'package:clean_architecture_pattern/domain/failures/failures.dart';
import 'package:clean_architecture_pattern/domain/entities/advice_entity.dart';
import 'package:clean_architecture_pattern/domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource() {
    throw UnimplementedError();
  }
  
}