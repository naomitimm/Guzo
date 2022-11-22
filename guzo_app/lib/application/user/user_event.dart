part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {}

class UpdateUserHandle extends UserEvent {
  @override
  List<Object?> get props => [];
}

class UpdateUserName extends UserEvent {
  @override
  List<Object?> get props => [];
}

class UpdateUserBio extends UserEvent {
  @override
  List<Object?> get props => [];
}

class UpdateUserCity extends UserEvent {
  @override
  List<Object?> get props => [];
}
