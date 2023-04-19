import 'dart:developer';
import 'package:clean_architecture_pattern/domain/entities/advice_entity.dart';
import 'package:clean_architecture_pattern/domain/usecases/advice_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerTwoState> {
  AdvicerCubit()
      : super(const AdvicerInitial(
            initialAdvice: 'Your Advice is waitnig for you!'));

  final AdviceUsecases adviceUsecases = AdviceUsecases();

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final AdviceEntity advice = await adviceUsecases.getAdvice();
    log('getting advice...');
    await Future.delayed(const Duration(seconds: 3), () {});
    log('got advice!');
    emit(AdvicerStateLoaded(advice: advice.advice));
    log('Advice: ${advice.advice.toString()}');
    // emit(AdvicerStateError(message: 'Error Message, could not get advice'));
  }
}
