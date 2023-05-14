import 'package:guzo_app/presentation/exports.dart';

class HostPage extends StatefulWidget {
  final User user;
  const HostPage({Key? key, required this.user}) : super(key: key);

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  int myIndex = 0;
  late User newUser;
  @override
  void initState() {
    newUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List myPages = [
      HomePage(
        user: newUser,
      ),
      const SearchPage(),
      const FavoritePage(),
      ProfilePage(
        user: newUser,
      )
    ];
    return Scaffold(
        body: myPages[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 40.0,
          showUnselectedLabels: false,
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
