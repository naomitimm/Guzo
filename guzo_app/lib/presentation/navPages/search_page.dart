import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 117, 94),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Text("Discover",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }

  Widget circles() {
    return const CircleAvatar(
      radius: 150,
      backgroundColor: Color.fromARGB(255, 0, 117, 94),
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Color.fromARGB(255, 41, 171, 135),
      ),
    );
  }
}
