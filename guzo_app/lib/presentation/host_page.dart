import 'package:guzo_app/presentation/screens_and_imports.dart';

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
