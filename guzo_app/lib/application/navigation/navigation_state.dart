part of 'navigation_cubit.dart';

@immutable
abstract class NavigationState {}

class NavigationInitial extends NavigationState {}

class OnBoardingRoute extends NavigationState {}

class LoginRoute extends NavigationState {}

class SignupRoute extends NavigationState {}

class DashboardRoute extends NavigationState {
  final int tabIndex;
  @override
  final User user;
  DashboardRoute({required this.tabIndex, required this.user});
}

class SightDetailsRoute extends NavigationState {
  final Sight sight;
  SightDetailsRoute({required this.sight});
}

class ExploreSightDetailsRoute extends NavigationState {
  final Sight sight;
  ExploreSightDetailsRoute({required this.sight});
}

class SearchRoute extends NavigationState {}
