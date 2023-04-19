import 'package:clean_architecture_pattern/data/repositories/advice_repo_impl.dart';
import 'package:clean_architecture_pattern/domain/entities/advice_entity.dart';
import 'package:clean_architecture_pattern/domain/failures/failures.dart';
import 'package:clean_architecture_pattern/domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceUsecases {
  final AdviceRepo adviceRepo = AdviceRepoImpl();

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    //space got business logic
  }
}
