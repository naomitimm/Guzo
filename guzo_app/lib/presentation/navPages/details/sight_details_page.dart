import 'package:guzo_app/presentation/exports.dart';

class SightDetailsPage extends StatelessWidget {
  final Sight sight;
  const SightDetailsPage({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final navCubit = context.read<NavigationCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          height: height / 2,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sight.imageUrl), fit: BoxFit.cover)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: height / 2,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
              ),
              Positioned(
                child: Container(
                  height: height / 17,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                ),
              ),
              Positioned(
                bottom: height - (height - 50),
                left: width - (width - 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailsHeadline(color: Colors.white, text: sight.name),
                    DetailsMiniHeadline(
                        color: Colors.white, text: sight.location)
                  ],
                ),
              ),
              Positioned(
                top: 5,
                left: 5,
                child: IconButton(
                    onPressed: () {
                      navCubit.toDashboardScreen();
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.chevronLeft,
                      color: Colors.white,
                      size: 25,
                    )),
              ),
              BlocConsumer<FavoritesBloc, FavoritesState>(
                listener: (context, state) {
                  if (state is FavoritesLoadingSuccessful) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: const Color.fromRGBO(41, 171, 135, 1)
                              .withOpacity(0.5),
                          content: const Text("Added to favorites")),
                    );
                  }
                },
                builder: (context, state) {
                  // if (state is AddedToFavorites) {
                  //   return Positioned(
                  //     bottom: height - (height - 20),
                  //     right: width - (width - 15),
                  //     child: CircleAvatar(
                  //       backgroundColor: const Color.fromRGBO(41, 171, 135, 1),
                  //       child: IconButton(
                  //           onPressed: () {},
                  //           icon: const Icon(
                  //             Icons.favorite,
                  //             color: Colors.white,
                  //           )),
                  //     ),
                  //   );
                  // }
                  return Positioned(
                    bottom: height - (height - 20),
                    right: width - (width - 15),
                    child: CircleAvatar(
                      backgroundColor: const Color.fromRGBO(41, 171, 135, 1),
                      child: IconButton(
                          onPressed: () {
                            context
                                .read<FavoritesBloc>()
                                .add(AddToFavorites(sight: sight));
                            context
                                .read<FavoritesBloc>()
                                .add(FavoritedASight());
                          },
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          )),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DescriptionHeadline(color: Colors.black, text: "Description"),
              DetailsDescription(
                  color: Colors.black,
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              SizedBox(
                height: 25,
              ),
              DetailsPersonNightCard(),
              SizedBox(
                height: 40,
              ),
              BookNowCard()
            ],
          ),
        ),
      ]),
    );
  }
}
