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
    final navCubit = context.read<NavigationCubit>();
    final size = MediaQuery.of(context).size;
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
          const PageHeadline(headline: "Explore"),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width / 15),
            child: Column(
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
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchSightTitle(text: "Historical Sights"),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return SearchRecommendedCard(
                      image: Sight.historicalSites[index].imageUrl,
                      location: Sight.historicalSites[index].name,
                      name: Sight.historicalSites[index].location,
                      dispatcher: () {
                        navCubit.toExploreSightDetailsScreen(
                            Sight.historicalSites[index]);
                      });
                })),
          ),
          const SearchSightTitle(text: "Desserts"),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return SearchRecommendedCard(
                    image: Sight.deserts[index].imageUrl,
                    location: Sight.deserts[index].name,
                    name: Sight.deserts[index].location,
                    dispatcher: () {
                      navCubit
                          .toExploreSightDetailsScreen(Sight.deserts[index]);
                    },
                  );
                })),
          ),
          const SearchSightTitle(text: "Mountains"),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return SearchRecommendedCard(
                      image: Sight.mountains[index].imageUrl,
                      location: Sight.mountains[index].name,
                      name: Sight.mountains[index].location,
                      dispatcher: () {
                        navCubit.toExploreSightDetailsScreen(
                            Sight.mountains[index]);
                      });
                })),
          ),
        ]),
      ),
    );
  }
}
