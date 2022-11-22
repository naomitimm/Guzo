part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent extends Equatable {}

class IncrementCounter extends CounterEvent {
  final int count;
  IncrementCounter({required this.count});
  @override
  List<Object?> get props => [count];
}

class DecrementCounter extends CounterEvent {
  final int count;
  DecrementCounter({required this.count});
  @override
  List<Object?> get props => [count];
}
