import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guzo_app/presentation/auth/login_page.dart';
import 'package:guzo_app/presentation/auth/signup_page.dart';
import 'package:guzo_app/presentation/host_page.dart';
import 'package:guzo_app/presentation/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(NavApp());
}

class NavApp extends StatelessWidget {
  NavApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final GoRouter _router = GoRouter(
      errorBuilder: (context, state) => ErrorScreen(error: state.error),
      routes: <GoRoute>[
        GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) =>
                const OnBoarding()),
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
                const HostPage())
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
