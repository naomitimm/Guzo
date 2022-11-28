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
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          height: size.height / 6,
          width: size.width / 2,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 0, 117, 94),
              ),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
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
        ));
  }
}
