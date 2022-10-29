import 'package:guzo_app/presentation/screens_and_imports.dart';

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
            Text(
              "Profile",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w500),
            ),
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 117, 94),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Edit Profile",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            infoComponent(
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                "Add your current city"),
            infoComponent(
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.date_range)),
                "Joined in July 2022"),
            infoComponent(
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                "Write details about you")
          ],
        ),
      ),
    );
  }

  Widget infoComponent(IconButton icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          iconSize: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: GoogleFonts.montserrat(color: Colors.black, fontSize: 15),
          ),
        )
      ],
    );
  }
}
