import 'package:bloc/bloc.dart';
import 'package:guzo_app/domain/nav_pages/home_page/sight_model.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  void toOnBoardingScreen() => emit(OnBoardingRoute());
  void toLoginScreen() => emit(LoginRoute());
  void toSignupScreen() => emit(SignupRoute());
  void toDashboardScreen([int tabIndex = 0]) =>
      emit(DashboardRoute(tabIndex: tabIndex));
  void toSightDetailsScreen(Sight sight) =>
      emit(SightDetailsRoute(sight: sight));
}
