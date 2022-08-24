import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guzo_app/presentation/host_page.dart';
import 'package:guzo_app/presentation/navPages/home_page.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    // return const HasFavorites();
    return const NoFavorites();
  }
}

class NoFavorites extends StatefulWidget {
  const NoFavorites({Key? key}) : super(key: key);

  @override
  State<NoFavorites> createState() => _NoFavoritesState();
}

class _NoFavoritesState extends State<NoFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("Favorites",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/favorites_page/bike.png'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text("No favorites yet.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Browse our app to pick out your favorite locations.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: _browse,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 117, 94),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text("Browse Locations",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _browse() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const HostPage();
    }));
  }
}

class HasFavorites extends StatefulWidget {
  const HasFavorites({Key? key}) : super(key: key);

  @override
  State<HasFavorites> createState() => _HasFavoritesState();
}

class _HasFavoritesState extends State<HasFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.plane,
                      size: 25,
                    )),
              ),
            Text("Favorites",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text("Recent",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  Text("Alphabet",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  favroiteCard("Gondar Castel", "Ethiopia", 'assets/home_page/ethiopia.jpg'),
                  favroiteCard("Gondar Castel", "Ethiopia", 'assets/home_page/ethiopia.jpg'),
                  favroiteCard("Gondar Castel", "Ethiopia", 'assets/home_page/ethiopia.jpg')
                ],
              ),
          )
          ],
        ),
      ),
    );
  }

  Widget favroiteCard(String name, String location, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
            border: Border.all(
              color: Colors.black.withOpacity(0.2),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
            ),
            
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: double.infinity,
                width: 140,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(name)),
                    Positioned(
                      top: 20,
                      
                      child: Text(location)),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.delete)))
                  ],
                ),
              ),
            )
          ],
            
          ),
        ),
      
    );
  }
}
