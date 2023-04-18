import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      //exe business logic
      //for ex - get an advice
      log('fake get advice triggered');
      await Future.delayed(const Duration(seconds: 3), () {});
      log('got advice!');
      emit(AdvicerStateLoaded(advice: 'Stay LiT for Him'));
      // emit(AdvicerStateError(message: 'Error Message, could not get advice'));
    });
  }
}
