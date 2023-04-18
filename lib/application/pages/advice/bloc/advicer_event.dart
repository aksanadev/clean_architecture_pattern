part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerEvent {}

class AdviceRequestedEvent extends AdvicerEvent {
  final String? input;
  AdviceRequestedEvent({this.input});
}
