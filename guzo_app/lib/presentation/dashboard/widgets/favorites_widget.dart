import 'package:guzo_app/presentation/exports.dart';

class FavoritesCard extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final void Function() dispatcher;
  final void Function() navigator;
  const FavoritesCard(
      {Key? key,
      required this.image,
      required this.location,
      required this.name,
      required this.dispatcher,
      required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: navigator,
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
              border: Border.all(
                color: const Color.fromARGB(255, 0, 117, 94),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: SizedBox(
                      height: double.infinity,
                      width: 140,
                      child: Stack(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                location,
                                style: GuzoTheme.lightModeTextTheme.labelLarge,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  name,
                                  style:
                                      GuzoTheme.lightModeTextTheme.labelMedium,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: IconButton(
                          onPressed: dispatcher,
                          icon: const Icon(
                            Icons.delete,
                            color: Color.fromARGB(255, 0, 117, 94),
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NoFavoritesCard extends StatelessWidget {
  const NoFavoritesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return Padding(
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
                  height: size.height / 2,
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
                          style: GuzoTheme.lightModeTextTheme.titleSmall),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Browse our app to pick out your favorite locations.",
                          style: GuzoTheme.lightModeTextTheme.bodySmall),
                      const SizedBox(
                        height: 40,
                      ),
                      WideGreenButton(
                          dispatcher: () {}, text: "Browse Locations")
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
