part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {}

class UpdateUserHandle extends UserEvent {
  final String userHandle;
  UpdateUserHandle({required this.userHandle});
  @override
  List<Object?> get props => [userHandle];
}

class UpdateUserName extends UserEvent {
  final String userName;
  UpdateUserName({required this.userName});
  @override
  List<Object?> get props => [userName];
}

class UpdateUserBio extends UserEvent {
  final String userBio;
  UpdateUserBio({required this.userBio});
  @override
  List<Object?> get props => [userBio];
}

class UpdateUserCity extends UserEvent {
  final String city;
  UpdateUserCity({required this.city});
  @override
  List<Object?> get props => [city];
}
