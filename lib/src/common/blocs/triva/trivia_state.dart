part of 'trivia_bloc.dart';

sealed class TriviaState extends Equatable {
  const TriviaState();
  
  @override
  List<Object> get props => [];
}

final class TriviaInitial extends TriviaState {}
