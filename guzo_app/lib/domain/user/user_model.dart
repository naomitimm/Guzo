import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userName;
  final String userHandle;
  final String userCity;
  final String userBio;

  const User(
      {required this.userName,
      required this.userHandle,
      required this.userCity,
      required this.userBio});

  @override
  List<Object?> get props => [userName, userHandle, userCity, userBio];
}
