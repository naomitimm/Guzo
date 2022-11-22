import 'package:guzo_app/presentation/exports.dart';

final List<Color> colors = [
  const Color.fromRGBO(41, 171, 135, 1),
  const Color.fromRGBO(0, 117, 94, 1),
];

class PageHeadline extends StatelessWidget {
  final String headline;
  const PageHeadline({Key? key, required this.headline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(headline,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.w500),
        ));
  }
}

class DetailsDescription extends StatelessWidget {
  final String text;
  final Color color;
  const DetailsDescription({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 15, fontWeight: FontWeight.w300),
        ));
  }
}

class DetailsHeadline extends StatelessWidget {
  final Color color;
  final String text;
  const DetailsHeadline({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 25, fontWeight: FontWeight.w500),
        ));
  }
}

class DetailsMiniHeadline extends StatelessWidget {
  final Color color;
  final String text;
  const DetailsMiniHeadline({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 20, fontWeight: FontWeight.w300),
        ));
  }
}

class DescriptionHeadline extends StatelessWidget {
  final Color color;
  final String text;
  const DescriptionHeadline({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 22, fontWeight: FontWeight.w600),
        ));
  }
}

class SliderLabel extends StatelessWidget {
  final Color color;
  final String text;
  const SliderLabel({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 18, fontWeight: FontWeight.w500),
        ));
  }
}
