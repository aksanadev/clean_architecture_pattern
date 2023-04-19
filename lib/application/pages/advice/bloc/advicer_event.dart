part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerEvent extends Equatable {}

class AdviceRequestedEvent extends AdvicerEvent {
  final String? input;
  AdviceRequestedEvent({this.input});
  
  @override
  List<Object?> get props => [input];
}
