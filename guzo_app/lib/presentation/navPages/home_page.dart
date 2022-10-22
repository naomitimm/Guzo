import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guzo_app/domain/nav_pages/home_page/sight_model.dart';
import 'package:guzo_app/domain/nav_pages/home_page/task_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.toggleOff,
                    size: 25,
                  )),
            ),
            Text("Discover",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text("Sights",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  Text("Places",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return sights(Sight.sights[index].imageUrl,
                        Sight.sights[index].name, Sight.sights[index].location);
                  })),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return task(
                        Task.tasks[index].imageUrl, Task.tasks[index].title);
                  })),
            ),
          ],
        ),
      ),
    );
  }

  Widget sights(String image, String name, String location) {
    return Stack(
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
    );
  }

  Widget task(String image, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 0, 117, 94),
            ),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(text,
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
      ),
    );
  }
}
