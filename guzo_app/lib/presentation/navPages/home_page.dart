import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final darkText = AppTheme.myLight();
  final lightText = AppTheme.myDark();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.bars)),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 219, 219, 219),
              thickness: 1,
            ),
            Text("Discover",
                style: GoogleFonts.merriweatherSans(
                  textStyle: const TextStyle(fontSize: 30),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text("Sights",
                      style: GoogleFonts.merriweatherSans(
                        textStyle: const TextStyle(fontSize: 18),
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  Text("Places",
                      style: GoogleFonts.merriweatherSans(
                        textStyle: const TextStyle(fontSize: 18),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return sights();
                  })),
            ),
          ],
        ),
      ),
    );
  }

  Widget sights() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 250,
        width: 200,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 99, 205, 99),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Gondar Castel",
                  style: GoogleFonts.merriweatherSans(
                    textStyle: const TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                  ),
                  Text("Gondar, Ethiopia",
                      style: GoogleFonts.merriweatherSans(
                        textStyle: darkText.textTheme.bodySmall,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
