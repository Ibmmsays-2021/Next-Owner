import 'package:equatable/equatable.dart';

abstract class PlaygroundEvent extends Equatable {}

class SubmitEvent extends PlaygroundEvent {
  @override
  List<Object> get props => [];
}

class FetchEvent extends PlaygroundEvent {
  @override
  List<Object> get props => [];
}
