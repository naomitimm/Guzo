part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {}

class UpdateUserHandle extends UserEvent {
  final User user;
  UpdateUserHandle({required this.user});
  @override
  List<Object?> get props => [user];
}

class UpdateUserName extends UserEvent {
  final User user;
  UpdateUserName({required this.user});
  @override
  List<Object?> get props => [user];
}

class UpdateUserBio extends UserEvent {
  final User user;
  UpdateUserBio({required this.user});
  @override
  List<Object?> get props => [user];
}

class UpdateUserCity extends UserEvent {
  final User user;
  UpdateUserCity({required this.user});
  @override
  List<Object?> get props => [user];
}
