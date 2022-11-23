part of 'buttons_bloc.dart';

@immutable
abstract class ButtonsState extends Equatable {}

class ButtonsInitial extends ButtonsState {
  @override
  List<Object?> get props => [];
}

class FavoriteButtonToggled extends ButtonsState {
  @override
  List<Object?> get props => [];
}

class ThemeButtonToggled extends ButtonsState {
  @override
  List<Object?> get props => [];
}

class ButtonToggleFailed extends ButtonsState {
  final Exception error;
  ButtonToggleFailed({required this.error});
  @override
  List<Object?> get props => [error];
}

class FavoriteButtonDetoggled extends ButtonsState {
  @override
  List<Object?> get props => [];
}

class ThemeButtonDetoggled extends ButtonsState {
  @override
  List<Object?> get props => [];
}

class ButtonDetoggleFailed extends ButtonsState {
  final Exception error;
  ButtonDetoggleFailed({required this.error});
  @override
  List<Object?> get props => [error];
}
