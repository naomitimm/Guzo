import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UpdateUserHandle>(_handleUserHandleUpdate);
    on<UpdateUserName>(_handleUserNameUpdate);
    on<UpdateUserBio>(_handleUserBioUpdate);
    on<UpdateUserCity>(_handleUserCityUpdate);
  }
  void _handleUserHandleUpdate(UpdateUserHandle event, Emitter emit) {
    try {
      emit(UserUpdating());
      final userhandle = event.user.userHandle;
      emit(UserHandleUpdated(userHandle: userhandle));
    } on Exception catch (error) {
      emit(UserUpdateFailed(error: error));
    }
  }

  void _handleUserNameUpdate(UpdateUserName event, Emitter emit) {
    try {
      emit(UserUpdating());
      final userName = event.user.userName;
      emit(UserNameUpdated(userName: userName));
    } on Exception catch (error) {
      emit(UserUpdateFailed(error: error));
    }
  }

  void _handleUserBioUpdate(UpdateUserBio event, Emitter emit) {
    try {
      emit(UserUpdating());
      final userBio = event.user.userBio;
      emit(UserBioUpdated(userBio: userBio));
    } on Exception catch (error) {
      emit(UserUpdateFailed(error: error));
    }
  }

  void _handleUserCityUpdate(UpdateUserCity event, Emitter emit) {
    try {
      emit(UserUpdating());
      final userCity = event.user.userCity;
      emit(UserCityUpdated(userCity: userCity));
    } on Exception catch (error) {
      emit(UserUpdateFailed(error: error));
    }
  }
}
