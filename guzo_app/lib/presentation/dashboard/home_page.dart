import 'package:guzo_app/presentation/exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: BlocConsumer<ButtonsBloc, ButtonsState>(
                listener: (context, state) {
                  if (state is ButtonToggleFailed) {
                    Text(state.error.toString());
                  }
                  if (state is ButtonDetoggleFailed) {
                    Text(state.error.toString());
                  }
                },
                builder: (context, state) {
                  if (state is ThemeButtonToggled) {
                    return IconButton(
                        onPressed: () {
                          context
                              .read<ButtonsBloc>()
                              .add(DetoggleThemeButton());
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.sun,
                          size: 25,
                        ));
                  }
                  if (state is ThemeButtonDetoggled) {
                    return IconButton(
                        onPressed: () {
                          context.read<ButtonsBloc>().add(ToggleThemeButton());
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.moon,
                          size: 25,
                        ));
                  }
                  return IconButton(
                      onPressed: () {
                        context.read<ButtonsBloc>().add(ToggleThemeButton());
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.moon,
                        size: 25,
                      ));
                },
              ),
            ),
            const PageHeadline(headline: "Discover"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height / 3.7,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Sight.sights.length,
                  itemBuilder: ((context, index) {
                    return HomeSightCard(
                      image: Sight.sights[index].imageUrl,
                      location: Sight.sights[index].location,
                      name: Sight.sights[index].name,
                      dispatcher: () {
                        navCubit.toSightDetailsScreen(Sight.sights[index]);
                      },
                    );
                  })),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: height / (5.5 / 4),
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return HomeTaskCard(
                        image: Task.tasks[index].imageUrl,
                        task: Task.tasks[index].title);
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
