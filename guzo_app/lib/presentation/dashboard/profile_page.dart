import 'package:guzo_app/presentation/exports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final cityController = TextEditingController();
  final bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                      iconSize: 25),
                ),
                const PageHeadline(headline: "Profile"),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/profile_page/avatar.png'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: GuzoTheme.lightModeTextTheme.titleSmall,
                            ),
                            Text(
                              "@john_d",
                              style: GuzoTheme.lightModeTextTheme.labelSmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    WideGreenButton(dispatcher: () {}, text: "Edit profile")
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ProfileInfoCard(
                  icon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.date_range)),
                  text: "Joined in July 2022",
                  dispatcher: () {},
                ),
                ProfileInfoCard(
                    icon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                    text: "Add your current city",
                    dispatcher: () {
                      showBottomSheet(
                          context: context,
                          builder: ((context) => BuildBottomSheet(
                                text: "Add your current city",
                                controller: cityController,
                                hintText: '',
                              )));
                    }),
                ProfileInfoCard(
                    icon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                    text: "Write details about you",
                    dispatcher: () {}),
              ],
            ),
          );
        },
      ),
    );
  }
}
