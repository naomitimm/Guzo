part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable {}

class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

class UserNameUpdated extends UserState {
  final String userName;
  UserNameUpdated({required this.userName});
  @override
  List<Object?> get props => [];
}

class UserNameUpdateFailed extends UserState {
  @override
  List<Object?> get props => [];
}

class UserHandleUpdated extends UserState {
  @override
  List<Object?> get props => [];
}

class UserHandeUpdateFailed extends UserState {
  @override
  List<Object?> get props => [];
}

class UserBioUpdated extends UserState {
  @override
  List<Object?> get props => [];
}

class UserBioUpdateFailed extends UserState {
  @override
  List<Object?> get props => [];
}

class UserCityUpdated extends UserState {
  @override
  List<Object?> get props => [];
}

class UserCityUpdateFailed extends UserState {
  @override
  List<Object?> get props => [];
}
