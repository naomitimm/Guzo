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
