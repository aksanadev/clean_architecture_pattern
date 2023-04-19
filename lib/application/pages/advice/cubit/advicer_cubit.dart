import 'package:clean_architecture_pattern/domain/failures/failures.dart';
import 'package:clean_architecture_pattern/domain/usecases/advice_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

const serverFailureMessage = 'FAILURE, server failed.';
const cacheFailureMessage = 'FAILURE, chache failed.';
const generalFailureMessage = 'FAILURE, general failure';
const defaultFailueMessage = 'FAILURE, undocummented failure';

class AdvicerCubit extends Cubit<AdvicerTwoState> {
  AdvicerCubit({
    required this.adviceUsecases,
  }) : super(const AdvicerInitial(
          initialAdvice: 'Your Advice is waitnig for you!',
        ));

  final AdviceUsecases adviceUsecases;

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final failureOrAdvice = await adviceUsecases.getAdvice();
    //failed OR got data?
    failureOrAdvice.fold(
      (failure) =>
          emit(AdvicerStateError(message: _mapFailureToMessage(failure))),
      (advice) => emit(AdvicerStateLoaded(advice: advice.advice)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return cacheFailureMessage;
      case GeneralFailure:
        return generalFailureMessage;
      default:
        return defaultFailueMessage;
    }
  }
}
