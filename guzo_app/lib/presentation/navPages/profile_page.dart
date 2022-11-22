import 'package:guzo_app/presentation/exports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                          style: GoogleFonts.montserrat(
                              color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "@john_d",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey, fontSize: 15),
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
                icon: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                text: "Add your current city"),
            ProfileInfoCard(
                icon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.date_range)),
                text: "Joined in July 2022"),
            ProfileInfoCard(
                icon: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                text: "Write details about you"),
          ],
        ),
      ),
    );
  }
}
