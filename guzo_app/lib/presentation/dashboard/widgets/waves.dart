import 'package:guzo_app/presentation/exports.dart';

class WaveSmall extends StatelessWidget {
  const WaveSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: AuthClipper(),
          child: Container(
            color: const Color.fromRGBO(41, 171, 135, 1),
            height: 100,
          ),
        ),
        ClipPath(
          clipper: AuthClipper(),
          child: Container(
            color: const Color.fromRGBO(0, 117, 94, 1),
            height: 80,
          ),
        ),
      ],
    );
  }
}

class AuthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    //p0
    path.lineTo(0, height - 20);
    //controlling point, p1
    var firstControlling = Offset(width / 4, height);
    // end point, p2
    var firstEnd = Offset(width / 2, height - 50.0);

    path.quadraticBezierTo(
        firstControlling.dx, firstControlling.dy, firstEnd.dx, firstEnd.dy);
    // p2 is the new starting point, you dont have to write it down
    var secondControlling = Offset(width - (width / 4.24), height - 105);
    // p4, new end

    var secondEnd = Offset(width, height - 60);
    path.quadraticBezierTo(
        secondControlling.dx, secondControlling.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
