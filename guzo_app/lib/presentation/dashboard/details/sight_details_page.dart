import 'package:guzo_app/presentation/exports.dart';

class SightDetailsPage extends StatelessWidget {
  final Sight sight;
  final User user;
  const SightDetailsPage({Key? key, required this.sight, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final navCubit = context.read<NavigationCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(sight.imageUrl), fit: BoxFit.cover)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: size.height / 2,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  ),
                  Positioned(
                    child: Container(
                      height: size.height / 17,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                    ),
                  ),
                  Positioned(
                    bottom: size.height / 15,
                    left: size.width / 20,
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
                    top: size.height / 90,
                    left: size.width / 90,
                    child: IconButton(
                        onPressed: () {
                          navCubit.toDashboardScreen(const User(
                              email: "", fullName: "", userName: ""));
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
                              backgroundColor:
                                  const Color.fromRGBO(41, 171, 135, 1)
                                      .withOpacity(0.5),
                              content: const Text("Added to favorites")),
                        );
                      }
                    },
                    builder: (context, state) {
                      return Positioned(
                        bottom: size.height / 28,
                        right: size.width / 25,
                        child: CircleAvatar(
                          backgroundColor:
                              const Color.fromRGBO(41, 171, 135, 1),
                          child: BlocBuilder<ButtonsBloc, ButtonsState>(
                            builder: (context, state) {
                              if (state is FavoriteButtonToggled) {
                                return IconButton(
                                    onPressed: () {
                                      context
                                          .read<ButtonsBloc>()
                                          .add(DetoggleFavoriteButton());
                                    },
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ));
                              }
                              if (state is FavoriteButtonDetoggled) {
                                return IconButton(
                                    onPressed: () {
                                      context
                                          .read<FavoritesBloc>()
                                          .add(AddToFavorites(sight: sight));
                                      context
                                          .read<ButtonsBloc>()
                                          .add(ToggleFavoriteButton());
                                    },
                                    icon: const Icon(
                                      Icons.favorite_outline,
                                      color: Colors.white,
                                    ));
                              }
                              return IconButton(
                                  onPressed: () {
                                    context
                                        .read<FavoritesBloc>()
                                        .add(AddToFavorites(sight: sight));
                                    context
                                        .read<ButtonsBloc>()
                                        .add(ToggleFavoriteButton());
                                  },
                                  icon: const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ));
                            },
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height / 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DescriptionHeadline(
                        color: Colors.black, text: "Description"),
                    const DetailsDescription(
                        color: Colors.black,
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                    SizedBox(
                      height: size.height / 35,
                    ),
                    const DetailsPersonNightCard(),
                    SizedBox(
                      height: size.height / 25,
                    ),
                    BookNowCard(
                      price: sight.price,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
