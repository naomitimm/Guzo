import 'package:guzo_app/presentation/exports.dart';

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
            const PageHeadline(headline: "Favorites"),
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
                  WideGreenButton(
                      dispatcher: () {
                        context.go('/host_page');
                      },
                      text: "Browse Locations")
                ],
              ),
            )
          ],
        ),
      ),
    );
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
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
            const PageHeadline(headline: "Favorites"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height / (3 / 4),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: Favorite.favorites.length,
                  itemBuilder: (context, index) {
                    return FavoritesCard(
                        image: Favorite.favorites[index].imageUrl,
                        location: Favorite.favorites[index].location,
                        name: Favorite.favorites[index].name);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
