import 'package:guzo_app/presentation/exports.dart';

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
