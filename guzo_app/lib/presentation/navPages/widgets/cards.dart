import 'package:guzo_app/presentation/exports.dart';

class HomeSightCard extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final void Function() dispatcher;
  const HomeSightCard(
      {Key? key,
      required this.image,
      required this.location,
      required this.name,
      required this.dispatcher})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dispatcher,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(name,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(location,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeTaskCard extends StatelessWidget {
  final String image;
  final String task;
  const HomeTaskCard({Key? key, required this.image, required this.task})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 0, 117, 94),
            ),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(task,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchCatagoryComponentCrd extends StatelessWidget {
  final String image;
  final String title;
  const SearchCatagoryComponentCrd(
      {Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                        const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2)),
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  backgroundImage: AssetImage(image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 117, 94),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchRecommendedCard extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final String title;
  const SearchRecommendedCard(
      {Key? key,
      required this.image,
      required this.location,
      required this.name,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 140,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                width: 300,
                height: 140,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(name,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(location,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FavoritesCard extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  const FavoritesCard(
      {Key? key,
      required this.image,
      required this.location,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: double.infinity,
                width: 140,
                child: Stack(
                  children: [
                    Align(alignment: Alignment.topLeft, child: Text(name)),
                    Positioned(top: 20, child: Text(location)),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete)))
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

class ProfileInfoCard extends StatelessWidget {
  final IconButton icon;
  final String text;
  const ProfileInfoCard({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          iconSize: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: GoogleFonts.montserrat(color: Colors.black, fontSize: 15),
          ),
        )
      ],
    );
  }
}

class DetailsPersonNightCard extends StatelessWidget {
  const DetailsPersonNightCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: height / 16,
          width: width / 2.3,
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(41, 171, 135, 1), width: 0.7),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("1 Person",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(41, 171, 135, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.chevronDown,
                    color: Color.fromRGBO(41, 171, 135, 1),
                    size: 18,
                  ))
            ],
          ),
        ),
        Container(
          height: height / 16,
          width: width / 2.3,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color.fromRGBO(41, 171, 135, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("1 Night",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.chevronDown,
                    color: Colors.white,
                    size: 18,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

class BookNowCard extends StatelessWidget {
  const BookNowCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      width: double.infinity,
      height: height / 10,
      decoration: const BoxDecoration(),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const DescriptionHeadline(color: Colors.black, text: "\$114"),
        Container(
          height: height / 16,
          width: width / 1.7,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Book Now",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.white,
                    size: 18,
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
