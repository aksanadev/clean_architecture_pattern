import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerTwoState> {
  AdvicerCubit() : super(const AdvicerInitial(initialAdvice: 'Your Advice is waitnig for you!'));

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    //exe business logic
    //for ex - get an advice
    log('fake get advice triggered');
    await Future.delayed(const Duration(seconds: 3), () {});
    log('got advice!');
    emit(const AdvicerStateLoaded(advice: 'Stay LiT for Him'));
    // emit(AdvicerStateError(message: 'Error Message, could not get advice'));
  }
}
