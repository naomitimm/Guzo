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
                "assets/float.png"),
            customContainer(
                "Guzo",
                "Relax & Enjoy",
                "Experience the world's best adventures Lorem ipsum dolor sit amet, consectetur adipiscing elit. . Donec ac tristique neque.",
                "assets/camp.png"),
            customContainer(
                "Guzo",
                "Need Vacation?",
                "Take a trip with us by joining Guzo today!",
                "assets/walk.png"),
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
                      width: 300,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color.fromARGB(255, 0, 117, 94)),
                      child: Center(
                        child: Text("Create an account",
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
                      width: 300,
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
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 117, 94),
                            fontSize: 18),
                      )),
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
                      child: const Text("Next",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 117, 94),
                              fontSize: 18)))
                ],
              ),
            ),
          );
  }

  Widget customContainer(
      String title, String subTitle, String description, String image) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100.0, top: 20, left: 20),
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
              top: 550,
              child: Text(subTitle,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 29, 81, 109),
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ))),
          Positioned(
              top: 590,
              child: SizedBox(
                width: 300,
                child: Text(
                  description,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
