import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:next/Screens/playgrounds/playgrounds.dart';
import 'package:next/models/playground.dart';

abstract class PlaygroundState extends Equatable {
  const PlaygroundState();

  @override
  List<Object> get props => [];
}

class InitialState extends PlaygroundState {}

class PlaygroundEmpty extends PlaygroundState {}

class PlaygroundLoading extends PlaygroundState {}

class PlaygroundLoaded extends PlaygroundState {
  final List<Playground> playgrounds;

  const PlaygroundLoaded({@required this.playgrounds});
}

class PlaygroundCached extends PlaygroundState {
  final List<Playgrounds> playgrounds;

  const PlaygroundCached({@required this.playgrounds})
      : assert(playgrounds != null);

  @override
  List<Object> get props => [playgrounds];
}

class PlaygroundError extends PlaygroundState {
  String message;
  PlaygroundError({this.message});
}
