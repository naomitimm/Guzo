part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class LoginEmailChanged extends LoginEvent {
  final String email;

  LoginEmailChanged({required this.email});

  @override
  List<Object?> get props => [email];
}

class LoginPasswordChanged extends LoginEvent {
  final String password;

  LoginPasswordChanged({required this.password});

  @override
  List<Object?> get props => [password];
}

class LoginFormSubmitted extends LoginEvent {
  @override
  List<Object?> get props => [];
}
