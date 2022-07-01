import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  int myIndex = 0;
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
          selectedItemColor: Colors.black,
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
                  color: Colors.black,
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.black,
                  size: 25,
                ),
                label: "Search"),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Colors.black,
                size: 25,
              ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userLarge,
                  color: Colors.black,
                  size: 25,
                ),
                label: "Profile"),
          ],
        ));
  }
}
