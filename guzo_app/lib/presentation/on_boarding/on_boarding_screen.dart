import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:intro_slider/intro_slider.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
          title: "Guzo",
          description: "Explore Your Ideal Journey",
          backgroundImage: "assets/ob1.jpg"),
    );
    slides.add(
      Slide(
          title: "Guzo",
          description: "Marvel At The Wonders Of The World",
          backgroundImage: "assets/cave.jpg"),
    );
    slides.add(
      Slide(
        title: "Guzo",
        backgroundImage: "assets/mountain.jpg",
        centerWidget: Column(
          children: [Container(), Container()],
        ),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      colorDot: Colors.white,
      slides: slides,
      onDonePress: onDonePress,
    );
  }

  // Widget bottomSheetWidget() {
  //   return isLastPage
  //       ? Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             ElevatedButton(
  //                 style: TextButton.styleFrom(
  //                   shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(10)),
  //                   primary: Colors.white,
  //                   backgroundColor: Colors.teal.shade700,
  //                 ),
  //                 onPressed: () {},
  //                 child: const Text("Lets get started")),
  //           ],
  //         )
  //       : SizedBox(
  //           height: 80,
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 30),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 TextButton(
  //                     onPressed: () {
  //                       pageController.jumpToPage(3);
  //                     },
  //                     child: const Text("Skip")),
  //                 SmoothPageIndicator(
  //                     effect: WormEffect(
  //                         spacing: 16,
  //                         dotColor: Colors.grey,
  //                         activeDotColor: Colors.teal.shade700),
  //                     controller: pageController,
  //                     count: 3,
  //                     onDotClicked: (index) => pageController.animateToPage(
  //                         index,
  //                         duration: const Duration(microseconds: 500),
  //                         curve: Curves.easeInOut)),
  //                 TextButton(
  //                     onPressed: () {
  //                       pageController.nextPage(
  //                           duration: const Duration(milliseconds: 500),
  //                           curve: Curves.easeInOut);
  //                     },
  //                     child: const Text("Next"))
  //               ],
  //             ),
  //           ),
  //         );
  // }
}

//   final pageController = PageController();
//bool isLastPage = false;
//return Scaffold(
//         body: PageView(
//           onPageChanged: (index) {
//             setState(() {
//               isLastPage = index == 2;
//             });
//           },
//           controller: pageController,
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/ob1.jpg"), fit: BoxFit.cover)),
//               child: const Center(
//                 child: Text("Page 1"),
//               ),
//             ),
//             Container(
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/ob2.jpg"), fit: BoxFit.cover)),
//               child: const Center(
//                 child: Text("Page 1"),
//               ),
//             ),
//             Container(
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/ob3.jpg"), fit: BoxFit.cover)),
//               child: const Center(
//                 child: Text("Page 1"),
//               ),
//             ),
//           ],
//         ),
//         bottomSheet: isLastPage
//             ? Container(
//                 color: Colors.transparent,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                         style: TextButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)),
//                           primary: Colors.white,
//                           backgroundColor: Colors.teal.shade700,
//                         ),
//                         onPressed: () {},
//                         child: const Text("Lets get started")),
//                   ],
//                 ),
//               )
//             : Container(
//                 color: Colors.transparent,
//                 height: 80,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextButton(
//                           onPressed: () {
//                             pageController.jumpToPage(3);
//                           },
//                           child: const Text("Skip")),
//                       SmoothPageIndicator(
//                           effect: WormEffect(
//                               spacing: 16,
//                               dotColor: Colors.grey,
//                               activeDotColor: Colors.teal.shade700),
//                           controller: pageController,
//                           count: 3,
//                           onDotClicked: (index) => pageController.animateToPage(
//                               index,
//                               duration: const Duration(microseconds: 500),
//                               curve: Curves.easeInOut)),
//                       TextButton(
//                           onPressed: () {
//                             pageController.nextPage(
//                                 duration: const Duration(milliseconds: 500),
//                                 curve: Curves.easeInOut);
//                           },
//                           child: const Text("Next"))
//                     ],
//                   ),
//                 ),
//               ));
