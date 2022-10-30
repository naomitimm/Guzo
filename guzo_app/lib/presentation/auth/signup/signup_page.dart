import 'package:guzo_app/domain/user/user_form_validator.dart';
import 'package:guzo_app/presentation/exports.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final darktext = AppTheme.myLight();
  final lightText = AppTheme.myDark();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
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
              GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color.fromARGB(255, 0, 117, 94)),
                      child: Center(
                        child: Text("Sign up",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    )),
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
                    onTap: () => context.go('/login_page'),
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
    );
  }

  Widget signUpComponent(String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 203, 203, 203)),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        width: 70,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.scaleDown)),
          ),
        ),
      ),
    );
  }
}
