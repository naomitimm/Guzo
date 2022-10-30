part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent extends Equatable {}

class SignupRequested extends SignupEvent {
  SignupRequested(
      {required this.userName, required this.email, required this.password});

  final String userName;
  final String email;
  final String password;

  @override
  List<Object?> get props => [userName, email, password];
}
