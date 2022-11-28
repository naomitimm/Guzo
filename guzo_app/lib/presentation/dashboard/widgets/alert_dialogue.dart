import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DialogueAction { yes, cancel }

class AlertDialogue {
  static Future<DialogueAction> logoutDialogue(BuildContext context,
      String title, String body, void Function() navigator) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: ((context) {
          return AlertDialog(
            title: Text(
              title,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            content: Text(
              body,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(DialogueAction.cancel);
                  },
                  child: const Text("Cancel")),
              TextButton(onPressed: navigator, child: const Text("Confirm")),
            ],
          );
        }));
    return (action != null) ? action : DialogueAction.cancel;
  }
}
