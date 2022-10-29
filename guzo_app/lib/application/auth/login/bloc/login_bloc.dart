import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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

  _handleLoginEmailChange(LoginEmailChanged event, Emitter emit) async {
    state.copyWith(email: event.email);
  }

  _handleLoginPasswordChange(LoginPasswordChanged event, Emitter emit) async {
    state.copyWith(password: event.password);
  }

  _handleLoginFormSubmission(LoginFormSubmitted event, Emitter emit) async {
    state.copyWith(formState: const FormSubmissionLoading());
  }
}
