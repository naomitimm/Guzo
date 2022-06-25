import 'package:flutter/material.dart';
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
          currentIndex: myIndex,
          onTap: (int index) {
            setState(() {
              myIndex = index;
            });
          },
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(color: Colors.black),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 30,
                ),
                label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                label: "Profile"),
          ],
        ));
  }
}
