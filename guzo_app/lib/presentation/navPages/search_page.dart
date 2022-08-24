import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guzo_app/domain/nav_pages/search_page/explore_sights_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.barsStaggered,
                    size: 25,
                  )),
            ),
          
          Text("Explore",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w500),
              )),
          // const SizedBox(
          //   height: 20,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text("Find destinations that suit you.",
          //       style: GoogleFonts.montserrat(
          //         textStyle: const TextStyle(
          //             color: Colors.grey,
          //             fontSize: 17,
          //             fontWeight: FontWeight.w500),
          //       )),
          // ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CupertinoSearchTextField(
              itemColor: const Color.fromARGB(255, 0, 117, 94),
              placeholderStyle:
                  const TextStyle(color: Color.fromARGB(255, 0, 117, 94)),
              style: GoogleFonts.montserrat(
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              backgroundColor:
                  const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  catagoriesComponent('assets/search_page/popular.png'),
                  catagoriesComponent('assets/search_page/trending1.png'),
                  catagoriesComponent('assets/search_page/recent1.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  catagoriesText("Popular"),
                  catagoriesText("Trending"),
                  catagoriesText("Recent")
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          containerCatagoriesTitle("Historical Sites"),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return containerCatagories(
                      ExploreSight.historicalSites[index].imageUrl,
                      ExploreSight.historicalSites[index].name,
                      ExploreSight.historicalSites[index].location);
                })),
          ),
          containerCatagoriesTitle("Desserts"),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return containerCatagories(
                      ExploreSight.deserts[index].imageUrl,
                      ExploreSight.deserts[index].name,
                      ExploreSight.deserts[index].location);
                })),
          ),
          containerCatagoriesTitle("Mountains"),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return containerCatagories(
                      ExploreSight.mountains[index].imageUrl,
                      ExploreSight.mountains[index].name,
                      ExploreSight.mountains[index].location);
                })),
          ),
        ]),
      ),
    );
  }

  Widget catagoriesComponent(String image) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2)),
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            backgroundImage: AssetImage(image)),
      ),
    );
  }

  Widget catagoriesText(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 117, 94),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget containerCatagories(String image, String name, String location) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.2),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            width: 300,
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

  Widget containerCatagoriesTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
