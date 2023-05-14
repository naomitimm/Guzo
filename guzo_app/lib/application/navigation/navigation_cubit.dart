import 'package:bloc/bloc.dart';
import 'package:guzo_app/domain/dashboard/home_page/sight_model.dart';
import 'package:meta/meta.dart';

import '../../domain/user/user_model.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  void toOnBoardingScreen() => emit(OnBoardingRoute());
  void toLoginScreen() => emit(LoginRoute());
  void toSignupScreen() => emit(SignupRoute());
  void toDashboardScreen(
    User user, [
    int tabIndex = 0,
  ]) =>
      emit(DashboardRoute(tabIndex: tabIndex, user: user));
  void toSightDetailsScreen(Sight sight) =>
      emit(SightDetailsRoute(sight: sight));
  void toExploreSightDetailsScreen(Sight sight) =>
      emit(ExploreSightDetailsRoute(sight: sight));
  void toSearchScreen() => emit(SearchRoute());
}
