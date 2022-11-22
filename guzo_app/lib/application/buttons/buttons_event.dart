part of 'buttons_bloc.dart';

@immutable
abstract class ButtonsEvent extends Equatable {}

class ToggleTheButton extends ButtonsEvent {
  @override
  List<Object?> get props => [];
}
