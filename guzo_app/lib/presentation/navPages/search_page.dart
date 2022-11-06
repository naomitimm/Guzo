import 'package:guzo_app/domain/nav_pages/search_page/catagory_model.dart';
import 'package:guzo_app/presentation/exports.dart';
import 'package:flutter/cupertino.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Catagory.catagories.length,
                    itemBuilder: (context, index) {
                      return SearchCatagoryComponentCrd(
                          image: Catagory.catagories[index].image,
                          title: Catagory.catagories[index].name);
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return SearchRecommendedCard(
                      image: ExploreSight.historicalSites[index].imageUrl,
                      location: ExploreSight.historicalSites[index].name,
                      name: ExploreSight.historicalSites[index].location,
                      title: "Historical Sites");
                })),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return SearchRecommendedCard(
                      image: ExploreSight.deserts[index].imageUrl,
                      location: ExploreSight.deserts[index].name,
                      name: ExploreSight.deserts[index].location,
                      title: "Desserts");
                })),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return SearchRecommendedCard(
                      image: ExploreSight.mountains[index].imageUrl,
                      location: ExploreSight.mountains[index].name,
                      name: ExploreSight.mountains[index].location,
                      title: "Mountains");
                })),
          ),
        ]),
      ),
    );
  }
}
