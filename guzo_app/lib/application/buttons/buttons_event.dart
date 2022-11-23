part of 'buttons_bloc.dart';

@immutable
abstract class ButtonsEvent extends Equatable {}

class ToggleFavoriteButton extends ButtonsEvent {
  // final Sight sight;
  // ToggleTheButton({required this.sight});
  @override
  List<Object?> get props => [];
}

class DetoggleFavoriteButton extends ButtonsEvent {
  // final Sight sight;
  // ToggleTheButton({required this.sight});
  @override
  List<Object?> get props => [];
}

class ToggleThemeButton extends ButtonsEvent {
  @override
  List<Object?> get props => [];
}

class DetoggleThemeButton extends ButtonsEvent {
  @override
  List<Object?> get props => [];
}
