import 'package:bloc/bloc.dart';
import 'package:next/Repository/playground_repository.dart';
import 'package:next/Screens/playgrounds/bloc/playground_event.dart';
import 'package:next/Screens/playgrounds/bloc/playground_state.dart';

class PlaygroundBloc extends Bloc<PlaygroundEvent, PlaygroundState> {
  PlaygroundRepository repo;
  PlaygroundBloc(PlaygroundState initialState, this.repo) : super(initialState);

  @override
  Stream<PlaygroundState> mapEventToState(PlaygroundEvent event) async* {
    if (event is FetchEvent) {
      yield PlaygroundLoading();
      try {
        var playgrounds = await repo.fetchPlayground();
        yield PlaygroundLoaded(playgrounds: playgrounds); 
      } catch (e) {
        yield PlaygroundError(message: e.toString());
      }
    }
  }
}
