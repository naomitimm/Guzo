import 'package:guzo_app/presentation/exports.dart';

void main() {
  runApp(const GuzoApp());
}

final authRepository = AuthRepository();

class GuzoApp extends StatelessWidget {
  const GuzoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [RepositoryProvider(create: (context) => AuthRepository())],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => NavigationCubit(),
              child: Container(),
            ),
            BlocProvider(
                create: (context) => LoginBloc(authRepository: authRepository)),
            BlocProvider(
                create: (context) =>
                    SignupBloc(authRepository: authRepository)),
            BlocProvider(
              create: (context) => FavoritesBloc()..add(LoadFavorites()),
            ),
            BlocProvider(
              create: (context) => UserBloc(),
            ),
            BlocProvider(
              create: (context) => ButtonsBloc(),
            ),
            BlocProvider(
              create: (context) => LogoutBloc(),
            )
          ],
          child: const GuzoPages(),
        ));
  }
}

class GuzoPages extends StatelessWidget {
  const GuzoPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        final theme = GuzoTheme.lightMode();
        return MaterialApp(
          theme: theme,
          home: Navigator(
            pages: [
              // const MaterialPage(child: OnBoardingPage()),
              const MaterialPage(child: HostPage()),
              if (state is SignupRoute) MaterialPage(child: SignupPage()),
              if (state is LoginRoute) const MaterialPage(child: LoginPage()),
              if (state is OnBoardingRoute)
                const MaterialPage(child: OnBoardingPage()),
              if (state is DashboardRoute)
                const MaterialPage(child: HostPage()),
              if (state is SightDetailsRoute)
                MaterialPage(child: SightDetailsPage(sight: state.sight)),
              if (state is ExploreSightDetailsRoute)
                MaterialPage(
                    child: ExploreSightDetailsPage(
                  sight: state.sight,
                )),
              if (state is SearchRoute) const MaterialPage(child: SearchPage())
            ],
            onPopPage: (route, result) => route.didPop(result),
          ),
        );
      },
    );
  }
}

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(error.toString()),
      )),
    );
  }
}
