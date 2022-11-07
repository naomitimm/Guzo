import 'package:guzo_app/presentation/exports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final darktext = AppTheme.myLight();
  final lightText = AppTheme.myDark();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ListView(children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
              onPressed: () {
                navCubit.toOnBoardingScreen();
              },
              icon: const FaIcon(
                FontAwesomeIcons.angleLeft,
                size: 25,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(alignment: Alignment.topCenter, child: GuzoHeadline()),
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
            AuthTextField(
                controller: _emailController,
                hintText: "Email",
                validator: UserFormValidator.validateEmail),
            const SizedBox(
              height: 25,
            ),
            PasswordField(
                controller: _passwordController,
                hintText: "Password",
                validator: UserFormValidator.validatePassword),
            const SizedBox(
              height: 40,
            ),
            LoginButton(
              formKey: _formKey,
              dispatcher: () {
                final loginBloc = context.read<LoginBloc>();
                loginBloc.add(
                  LoginRequested(
                      email: _emailController.text,
                      password: _passwordController.text),
                );
              },
              lable: "Log In",
            ),
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
              children: const [
                ExtraAuthRoutes(image: "assets/home_page/google.png"),
                ExtraAuthRoutes(image: "assets/home_page/facebook.png"),
                ExtraAuthRoutes(image: "assets/home_page/twitter.png"),
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
                  onTap: () {
                    navCubit.toSignupScreen();
                  },
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
    ));
  }
}
