import 'package:guzo_app/application/auth/signup/signup_bloc.dart';
import 'package:guzo_app/presentation/exports.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  PasswordField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.validator,
      this.isVisible = true})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?) validator;
  bool isVisible;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: !showPassword,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.isVisible
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: FaIcon(
                  showPassword
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,
                  size: 20,
                ),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class ExtraAuthRoutes extends StatelessWidget {
  const ExtraAuthRoutes({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
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

class GuzoHeadline extends StatelessWidget {
  const GuzoHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Guzo",
        style: GoogleFonts.dancingScript(
          textStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 117, 94),
              fontSize: 80,
              fontWeight: FontWeight.w800),
        ));
  }
}

class LoginButton extends StatelessWidget {
  final void Function() dispatcher;
  final GlobalKey<FormState> formKey;
  final String lable;
  const LoginButton(
      {Key? key,
      required this.formKey,
      required this.dispatcher,
      required this.lable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailed) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error.toString())));
        }
        if (state is LoginSuccesful) {
          context.go('/host_page');
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if (formKey.currentState!.validate()) {
              dispatcher();
            }
          },
          child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 0, 117, 94)),
                child: Center(
                  child: state is LoggingIn
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(lable,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                ),
              )),
        );
      },
    );
  }
}

class SignupButton extends StatelessWidget {
  final String lable;
  final GlobalKey<FormState> formKey;
  final void Function() dispatcher;
  const SignupButton(
      {Key? key,
      required this.lable,
      required this.formKey,
      required this.dispatcher})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccessful) {
          context.go('/host_page');
        }
        if (state is SignupFailed) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error.toString())));
        }
      },
      builder: (context, state) {
        return GestureDetector(
            onTap: () {
              if (formKey.currentState!.validate()) {
                dispatcher();
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 0, 117, 94)),
                child: Center(
                  child: state is SigningUp
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(lable,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                ),
              ),
            ));
      },
    );
  }
}
