import 'package:guzo_app/presentation/exports.dart';

class GuzoTheme {
  static TextTheme lightModeTextTheme = TextTheme(
    titleLarge: GoogleFonts.dancingScript(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 0, 117, 94),
          fontSize: 80,
          fontWeight: FontWeight.w800),
    ),
    titleMedium: GoogleFonts.dancingScript(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 0, 117, 94),
          fontSize: 80,
          fontWeight: FontWeight.w800),
    ),
    titleSmall: GoogleFonts.dancingScript(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
    ),
    headlineLarge: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 35, fontWeight: FontWeight.w500),
    ),
    headlineMedium: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
    ),
    // link text
    headlineSmall: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 0, 117, 94),
          fontSize: 15,
          fontWeight: FontWeight.w700),
    ),

    displayMedium: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 0, 117, 94),
          fontSize: 16,
          fontWeight: FontWeight.w300),
    ),
    // 4, 5, 6 details page
    // headline4: GoogleFonts.montserrat(
    //   textStyle: const TextStyle(
    //       color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
    // ),
    // headline5: GoogleFonts.montserrat(
    //   textStyle: const TextStyle(
    //       color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
    // ),
    // headline6: GoogleFonts.montserrat(
    //   textStyle: const TextStyle(
    //       color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
    // ),
    //bd 1, 2 not needed
    // bodyText1: GoogleFonts.montserrat(
    //   textStyle: const TextStyle(
    //       color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
    // ),
    // bodyText2: GoogleFonts.montserrat(
    //   textStyle: const TextStyle(
    //       color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
    // ),

    bodyLarge: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
    ),
    bodyMedium: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
    ),
    bodySmall: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
    ),
    labelLarge: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
    ),
    labelMedium: GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
    ),
    labelSmall: GoogleFonts.montserrat(
        color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
  );
  static ThemeData lightMode() {
    return ThemeData(
        brightness: Brightness.light,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: const Color.fromARGB(255, 0, 117, 94),
            selectedLabelStyle: GoogleFonts.montserrat(
              textStyle: const TextStyle(fontWeight: FontWeight.w700),
            )));
  }

  static ThemeData darkMode() {
    return ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: const Color.fromARGB(255, 0, 117, 94),
            selectedLabelStyle: GoogleFonts.montserrat(
              textStyle: const TextStyle(fontWeight: FontWeight.w700),
            )));
  }
}
