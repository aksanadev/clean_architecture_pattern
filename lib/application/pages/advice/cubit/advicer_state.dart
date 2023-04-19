part of 'advicer_cubit.dart';

abstract class AdvicerTwoState extends Equatable {
  const AdvicerTwoState();

  @override
  List<Object?> get props => [];
}

class AdvicerInitial extends AdvicerTwoState {
  @override
  List<Object?> get props => [];
}

class AdvicerStateLoading extends AdvicerTwoState {
  @override
  List<Object?> get props => [];
}

class AdvicerStateLoaded extends AdvicerTwoState {
  final String advice;

  const AdvicerStateLoaded({required this.advice});
  
  @override
  List<Object?> get props =>[advice];
}

class AdvicerStateError extends AdvicerTwoState {
  final String message;

  const AdvicerStateError({required this.message});
  
  @override
  List<Object?> get props => [message];
}
