import 'package:clean_architecture_pattern/domain/entities/advice_entity.dart';
import 'package:clean_architecture_pattern/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AdviceRepo {
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource();
}
