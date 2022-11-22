part of 'buttons_bloc.dart';

@immutable
abstract class ButtonsState extends Equatable {}

class ButtonsInitial extends ButtonsState {
  @override
  List<Object?> get props => [];
}

class ButtonToggled extends ButtonsState {
  @override
  List<Object?> get props => [];
}

class ButtonToggleFailed extends ButtonsState {
  final Exception error;
  ButtonToggleFailed({required this.error});
  @override
  List<Object?> get props => [error];
}
