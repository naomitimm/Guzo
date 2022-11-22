import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'buttons_event.dart';
part 'buttons_state.dart';

class ButtonsBloc extends Bloc<ButtonsEvent, ButtonsState> {
  ButtonsBloc() : super(ButtonsInitial()) {
    on<ToggleTheButton>(_handleButtonToggle);
  }

  void _handleButtonToggle(ToggleTheButton event, Emitter emit) {
    try {
      emit(ButtonToggled());
    } on Exception catch (error) {
      emit(ButtonToggleFailed(error: error));
    }
  }
}
