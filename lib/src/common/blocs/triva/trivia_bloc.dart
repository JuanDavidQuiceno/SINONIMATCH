import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'trivia_event.dart';
part 'trivia_state.dart';

class TriviaBloc extends Bloc<TriviaEvent, TriviaState> {
  TriviaBloc() : super(TriviaInitial()) {
    on<TriviaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
