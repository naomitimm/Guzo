import 'package:bloc/bloc.dart';
import 'package:guzo_app/application/auth/form_submission_state.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEmailChanged>(_handleLoginEmailChange);
    on<LoginPasswordChanged>(_handleLoginPasswordChange);
    on<LoginFormSubmitted>(_handleLoginFormSubmission);
  }

  _handleLoginEmailChange(LoginEmailChanged event, Emitter emit) {}
  _handleLoginPasswordChange(LoginPasswordChanged event, Emitter emit) {}
  _handleLoginFormSubmission(LoginFormSubmitted event, Emitter emit) {}
}
