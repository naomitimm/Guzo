import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'buttons_event.dart';
part 'buttons_state.dart';

class ButtonsBloc extends Bloc<ButtonsEvent, ButtonsState> {
  ButtonsBloc() : super(ButtonsInitial()) {
    on<ToggleFavoriteButton>(_handleFavoriteButtonToggle);
    on<ToggleThemeButton>(_handleThemeButtonToggle);
    on<DetoggleFavoriteButton>(_handleFavoriteButtonDetoggle);
    on<DetoggleThemeButton>(_handleThemeButtonDetoggle);
  }

  void _handleFavoriteButtonToggle(ToggleFavoriteButton event, Emitter emit) {
    try {
      emit(FavoriteButtonToggled());
    } on Exception catch (error) {
      emit(ButtonToggleFailed(error: error));
    }
  }

  void _handleThemeButtonToggle(ToggleThemeButton event, Emitter emit) {
    try {
      emit(ThemeButtonToggled());
    } on Exception catch (error) {
      emit(ButtonToggleFailed(error: error));
    }
  }

  void _handleFavoriteButtonDetoggle(
      DetoggleFavoriteButton event, Emitter emit) {
    try {
      emit(FavoriteButtonDetoggled());
    } on Exception catch (error) {
      emit(ButtonDetoggleFailed(error: error));
    }
  }

  void _handleThemeButtonDetoggle(DetoggleThemeButton event, Emitter emit) {
    try {
      emit(ThemeButtonDetoggled());
    } on Exception catch (error) {
      emit(ButtonDetoggleFailed(error: error));
    }
  }
}
