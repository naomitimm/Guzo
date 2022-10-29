part of 'login_bloc.dart';

@immutable
class LoginState {
  final String email;
  final String password;
  final FormSubmissionState formState;

  const LoginState(
      {this.email = '',
      this.password = '',
      this.formState = const FormSubmissionInitial()});

  LoginState copyWith(
          {String? email, String? password, FormSubmissionState? formState}) =>
      LoginState(
          email: email ?? this.email,
          password: password ?? this.password,
          formState: formState ?? this.formState);
}
