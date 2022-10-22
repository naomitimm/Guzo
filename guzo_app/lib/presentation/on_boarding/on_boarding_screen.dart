import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guzo_app/presentation/auth/login_page.dart';
import 'package:guzo_app/presentation/auth/signup_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          controller: pageController,
          children: [
            customContainer(
                "Guzo",
                "Relax & Enjoy",
                "Experience the world's best adventures Lorem ipsum dolor sit amet, consectetur adipiscing elit. . Donec ac tristique neque.",
                "assets/on_boarding/float.png"),
            customContainer(
                "Guzo",
                "Get Off Track",
                "Why rush? When you can relax and marvel at the wonders of the world. elit. . Donec ac tristique neque.",
                "assets/on_boarding/camp.png"),
            customContainer(
                "Guzo",
                "Need Vacation?",
                "Take a trip with us by joining Guzo today!",
                "assets/on_boarding/walk.png"),
          ],
        ),
        bottomSheet: bottomSheetWidget());
  }

  Widget bottomSheetWidget() {
    return isLastPage
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const SignUp();
                  })));
                },
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color.fromARGB(255, 0, 117, 94)),
                      child: Center(
                        child: Text("New account",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const LogIn();
                  })));
                },
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color.fromARGB(255, 0, 117, 94)),
                      child: Center(
                        child: Text("Log in",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    )),
              ),
            ],
          )
        : SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        pageController.jumpToPage(3);
                      },
                      child: Text("Skip",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 117, 94),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))),
                  SmoothPageIndicator(
                      effect: WormEffect(
                          spacing: 16,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.teal.shade700),
                      controller: pageController,
                      count: 3,
                      onDotClicked: (index) => pageController.animateToPage(
                          index,
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeInOut)),
                  TextButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Text("Next",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 117, 94),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              ),
            ),
          );
  }

  Widget customContainer(
      String title, String subTitle, String description, String image) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100.0, top: 40, left: 20),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(title,
                  style: GoogleFonts.dancingScript(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 117, 94),
                        fontSize: 80,
                        fontWeight: FontWeight.w800),
                  ))),
          Positioned(
              top: 100,
              child: Text(subTitle,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 29, 81, 109),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ))),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              width: 250,
              child: Text(
                description,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
