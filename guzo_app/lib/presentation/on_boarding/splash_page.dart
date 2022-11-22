import 'package:guzo_app/presentation/exports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 174, 131),
        body: Stack(
          children: [
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: Text(
            //     "Welcome To Guzo",
            //     style: darkThemeText.textTheme.headline1,
            //   ),
            // ),

            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 700,
                  child: Lottie.network(
                      "https://assets8.lottiefiles.com/packages/lf20_wnefppmu.json")),
            ),
            Positioned(
                bottom: 300,
                right: 50,
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Icon(Icons.navigate_next_rounded),
                  elevation: 5.0,
                )),
            Positioned(
                bottom: 70,
                left: 20,
                child: RotatedBox(
                    quarterTurns: 3,
                    child: Text("Explore Ethiopia",
                        style: GoogleFonts.merriweatherSans()))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(70),
                  //     topRight: Radius.circular(70)),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 30,
              ),
            )
          ],
        ));
  }
}
