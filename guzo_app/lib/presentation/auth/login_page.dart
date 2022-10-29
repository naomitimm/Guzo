import 'package:guzo_app/presentation/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_theme.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final darktext = AppTheme.myLight();
  final lightText = AppTheme.myDark();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: loginUi());
  }

  Widget loginUi() {
    return Form(
      key: _formKey,
      child: ListView(children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
              onPressed: () => context.go('/'),
              icon: const FaIcon(
                FontAwesomeIcons.angleLeft,
                size: 25,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(alignment: Alignment.topCenter, child: guzoHeadline()),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text("Log in to your account",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(children: [
            emailField(_emailController),
            const SizedBox(
              height: 25,
            ),
            passwordField(_passwordController),
            const SizedBox(
              height: 40,
            ),
            formSubmitButton(),
            Text("Or log in with",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                signUpComponent("assets/home_page/google.png"),
                signUpComponent("assets/home_page/facebook.png"),
                signUpComponent("assets/home_page/twitter.png")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account yet?",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () => context.go('/signUp_page'),
                  child: Text("Sign Up",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 117, 94),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )),
                ),
              ],
            ),
          ]),
        )
      ]),
    );
  }

  Widget formSubmitButton() {
    return GestureDetector(
      onTap: () => _navigate(),
      child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromARGB(255, 0, 117, 94)),
            child: Center(
              child: Text("Log In",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          )),
    );
  }

  void _navigate() {
    context.go('/host_page');
  }
}
