import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guzo_app/presentation/navPages/favorite_page.dart';
import 'package:guzo_app/presentation/navPages/home_page.dart';
import 'package:guzo_app/presentation/navPages/profile_page.dart';
import 'package:guzo_app/presentation/navPages/search_page.dart';

class HostPage extends StatefulWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  int myIndex = 2;
  List myPages = [
    const HomePage(),
    const SearchPage(),
    const FavoritePage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myPages[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 40.0,
          showUnselectedLabels: false,
          // type: BottomNavigationBarType.fixed,
          // backgroundColor:
          //     const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
          selectedItemColor: const Color.fromARGB(255, 0, 117, 94),
          selectedLabelStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(fontWeight: FontWeight.w700),
          ),
          currentIndex: myIndex,
          onTap: (int index) {
            setState(() {
              myIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.house,
                  color: Color.fromARGB(255, 0, 117, 94),
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Color.fromARGB(255, 0, 117, 94),
                  size: 25,
                ),
                label: "Search"),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Color.fromARGB(255, 0, 117, 94),
                size: 25,
              ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userLarge,
                  color: Color.fromARGB(255, 0, 117, 94),
                  size: 25,
                ),
                label: "Profile"),
          ],
        ));
  }
}
