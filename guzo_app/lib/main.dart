import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guzo_app/application/auth/login/bloc/login_bloc.dart';
import 'package:guzo_app/infrustructure/auth/auth_repository.dart';
import 'package:guzo_app/presentation/exports.dart';

void main() {
  runApp(GuzoPages());
}

class GuzoApp extends StatelessWidget {
  const GuzoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) =>
            LoginBloc(authRepository: context.read<AuthRepository>()),
        child: GuzoPages(),
      ),
    );
  }
}

class GuzoPages extends StatelessWidget {
  GuzoPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  // final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // final _shellNavigatorKey = GlobalKey<NavigatorState>();

  final GoRouter _router = GoRouter(
      initialLocation: '/',
      errorBuilder: (context, state) => ErrorScreen(error: state.error),
      routes: <GoRoute>[
        GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) =>
                const LogIn()),
        // GoRoute(
        //     path: '/',
        //     builder: (BuildContext context, GoRouterState state) =>
        //         const OnBoarding()),
        GoRoute(
            path: '/signUp_page',
            builder: (BuildContext context, GoRouterState state) =>
                const SignUp()),
        GoRoute(
            path: '/login_page',
            builder: (BuildContext context, GoRouterState state) =>
                const LogIn()),
        GoRoute(
          path: '/host_page',
          builder: (BuildContext context, GoRouterState state) =>
              const HostPage(),

          // routes: [
          // GoRoute(
          //   path: '/sight_detail_page/:name',
          //   builder: (context, state) =>
          //       SightDetail(name: state.params["name"]!),
          // )
          // ]
        ),
      ]);
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
