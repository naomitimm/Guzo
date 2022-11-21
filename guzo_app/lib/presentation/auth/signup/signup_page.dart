import 'package:guzo_app/presentation/exports.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final darktext = AppTheme.myLight();

  final lightText = AppTheme.myDark();

  final _userNameController = TextEditingController();

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
            child: Text("Create your account",
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
            child: Column(
              children: [
                AuthTextField(
                    controller: _userNameController,
                    hintText: "User Name",
                    validator: UserFormValidator.validateUserName),
                const SizedBox(
                  height: 25,
                ),
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
                  height: 25,
                ),
                BlocConsumer<SignupBloc, SignupState>(
                  listener: (context, state) {
                    if (state is SignupSuccessful) {
                      navCubit.toDashboardScreen();
                    }
                    if (state is SignupFailed) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error.toString())));
                    }
                  },
                  builder: (context, state) {
                    if (state is SignupInitial) {
                      return AuthWideGreenButton(
                          lable: "Signup",
                          dispatcher: () {
                            context.read<SignupBloc>().add(SignupRequested(
                                userName: _userNameController.text,
                                email: _emailController.text,
                                password: _passwordController.text));
                          },
                          formKey: _formKey);
                    }
                    if (state is SigningUp) {
                      return const AuthLoadingButton();
                    }
                    return Container();
                  },
                ),
                Text("Or sign up with",
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
                    Text("Already have an account?",
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
                        navCubit.toLoginScreen();
                      },
                      child: Text("Log In",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 117, 94),
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
