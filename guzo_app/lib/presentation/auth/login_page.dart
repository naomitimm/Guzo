import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guzo_app/presentation/auth/signup_page.dart';

import '../theme/app_theme.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final darktext = AppTheme.myLight();
  final lightText = AppTheme.myDark();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ob1.jpg"), fit: BoxFit.cover)),
          child: Stack(children: [
            IconButton(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    // border: Border.all(color: Colors.white, width: 20),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.merriweatherSans(
                        textStyle: lightText.textTheme.bodySmall,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 2.0,
                      fixedSize: const Size(100, 35),
                      primary: Colors.black,
                      onPrimary: Colors.white)),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Forgot Password?",
                style: GoogleFonts.merriweatherSans(
                    textStyle: darktext.textTheme.bodySmall),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet?",
                    style: GoogleFonts.merriweatherSans(
                        textStyle: darktext.textTheme.bodySmall),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: navigateToSignUp,
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.merriweatherSans(
                          textStyle: darktext.textTheme.bodySmall,
                          color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }

  void navigateToSignUp() {
    Navigator.push(context, MaterialPageRoute(builder: ((context) {
      return const SignUp();
    })));
  }
}
