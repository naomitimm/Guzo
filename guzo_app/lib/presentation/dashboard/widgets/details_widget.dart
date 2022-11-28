import 'package:guzo_app/presentation/exports.dart';

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
          width: width / 2.2,
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(41, 171, 135, 1), width: 0.7),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.plus,
                    color: Color.fromRGBO(41, 171, 135, 1),
                    size: 18,
                  )),
              Text("1 Person",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(41, 171, 135, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.minus,
                    color: Color.fromRGBO(41, 171, 135, 1),
                    size: 18,
                  ))
            ],
          ),
        ),
        Container(
          height: height / 16,
          width: width / 2.2,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color.fromRGBO(41, 171, 135, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                    size: 18,
                  )),
              Text("1 Night",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.plus,
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
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const DescriptionHeadline(color: Colors.black, text: "\$114"),
        Container(
          height: height / 16,
          width: width / 1.5,
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
                        fontSize: 16,
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
