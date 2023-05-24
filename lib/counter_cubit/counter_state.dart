part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}
class CounterIncremented extends  CounterState {
  final counter;

  CounterIncremented(this.counter);

}

