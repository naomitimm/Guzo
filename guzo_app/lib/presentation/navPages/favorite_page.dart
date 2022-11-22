import 'package:guzo_app/presentation/exports.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          if (state is FavoritesLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: Color.fromARGB(255, 0, 117, 94),
            ));
          }
          if (state is FavoritesLoadingSuccessful && state.sights.isEmpty) {
            return const NoFavoritesCard();
          }
          if (state is FavoritesLoadingSuccessful) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.plane,
                          size: 25,
                        )),
                  ),
                  const PageHeadline(headline: "Favorites"),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: height / (5.5 / 4),
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: state.sights.length,
                        itemBuilder: (context, index) {
                          return BlocListener<FavoritesBloc, FavoritesState>(
                            listener: (context, state) {
                              if (state is FavoritesLoadingSuccessful) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor:
                                          const Color.fromRGBO(41, 171, 135, 1)
                                              .withOpacity(0.5),
                                      content:
                                          const Text("Removed from favorites")),
                                );
                              }
                            },
                            child: FavoritesCard(
                              image: state.sights[index].imageUrl,
                              location: state.sights[index].location,
                              name: state.sights[index].name,
                              dispatcher: () {
                                context.read<FavoritesBloc>().add(
                                    RemoveFromFavorites(
                                        sight: state.sights[index]));
                              },
                              navigator: () {
                                navCubit
                                    .toSightDetailsScreen(state.sights[index]);
                              },
                            ),
                          );
                        }),
                  ),
                ],
              ),
            );
          }
          if (state is FavoritesLoadingFailed) {
            return Center(
              child: Text(state.error.toString()),
            );
          }
          return Container();
        },
      ),
    );
  }
}
