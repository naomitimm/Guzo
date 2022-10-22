import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:guzo_app/presentation/host_page.dart';

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
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: IconButton(
        //       onPressed: navigateToHome,
        //       icon: const Padding(
        //         padding: EdgeInsets.all(10.0),
        //         child: Icon(
        //           Icons.arrow_back_ios,
        //           color: Colors.black,
        //           size: 30,
        //         ),
        //       )),
        // ),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Text("Guzo",
              style: GoogleFonts.dancingScript(
                textStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 117, 94),
                    fontSize: 80,
                    fontWeight: FontWeight.w800),
              )),
        ),
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
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () => context.go('/host_page'),
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
