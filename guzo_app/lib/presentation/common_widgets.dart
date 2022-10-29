import 'package:guzo_app/presentation/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

Widget emailField(TextEditingController _controller) {
  return TextFormField(
    controller: _controller,
    decoration:
        const InputDecoration(border: OutlineInputBorder(), labelText: "Email"),
  );
}

Widget passwordField(TextEditingController _controller) {
  return TextFormField(
    controller: _controller,
    obscureText: true,
    decoration: const InputDecoration(
        suffixIcon: IconButton(
          onPressed: _toggleHideButton,
          icon: FaIcon(
            FontAwesomeIcons.eyeSlash,
            size: 20,
          ),
        ),
        border: OutlineInputBorder(),
        labelText: "Password"),
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

Widget guzoHeadline() {
  return Text("Guzo",
      style: GoogleFonts.dancingScript(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 117, 94),
            fontSize: 80,
            fontWeight: FontWeight.w800),
      ));
}

Widget formSubmitButton1(Function function) {
  return GestureDetector(
    onTap: () => function,
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

void _toggleHideButton() {}
