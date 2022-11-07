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
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 0, 117, 94).withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
            const PageHeadline(headline: "Discover"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
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
              height: 60,
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
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
