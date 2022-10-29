import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

void _toggleHideButton() {}
