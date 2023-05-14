import 'package:equatable/equatable.dart';
import 'package:guzo_app/presentation/exports.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepository authRepository;
  SignupBloc({required this.authRepository}) : super(const SignupInitial()) {
    on<SignupRequested>(_handleSignupRequest);
  }

  void _handleSignupRequest(SignupRequested event, Emitter emit) async {
    try {
      emit(const SigningUp());
      await Future.delayed(const Duration(seconds: 2));
      emit(SignupSuccessful(loggedUser: event.user));
    } on Error catch (error) {
      emit(SignupFailed(error: error));
      return;
    }
  }
}
