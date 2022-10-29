import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:guzo_app/infrustructure/auth/auth_repository.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.authRepository}) : super(const LoginInitial()) {
    on<LoginRequested>(_handleLoginRequest);
  }

  final AuthRepository authRepository;

  void _handleLoginRequest(LoginRequested event, Emitter emit) async {
    try {
      emit(const LoggingIn());
      await authRepository.login();
      emit(const LoginSuccesful());
    } on Exception catch (error) {
      emit(LoginFailed(error: error));
      return;
    }
  }
}
