part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerState extends Equatable {}

class AdvicerInitial extends AdvicerState {
  final String advicePlaceHolder;

  AdvicerInitial({required this.advicePlaceHolder});
  @override
  List<Object?> get props => [];
}

class AdvicerStateLoading extends AdvicerState {
  @override
  List<Object?> get props => [];
}

class AdvicerStateLoaded extends AdvicerState {
  final String advice;

  AdvicerStateLoaded({required this.advice});

  @override
  List<Object?> get props => [advice];
}

class AdvicerStateError extends AdvicerState {
  final String message;

  AdvicerStateError({required this.message});

  @override
  List<Object?> get props => [message];
}
