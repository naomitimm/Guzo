import 'package:guzo_app/presentation/exports.dart';

class ProfileInfoCard extends StatelessWidget {
  final IconButton icon;
  final String text;
  final void Function() dispatcher;
  const ProfileInfoCard(
      {Key? key,
      required this.icon,
      required this.text,
      required this.dispatcher})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dispatcher,
      child: Row(
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
              style: GuzoTheme.lightModeTextTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}

class BuildBottomSheet extends StatelessWidget {
  final TextEditingController userNameController;
  final TextEditingController userHandleController;
  final TextEditingController userCityController;
  final TextEditingController userBioController;
  final void Function() submit;

  const BuildBottomSheet(
      {Key? key,
      required this.userNameController,
      required this.userHandleController,
      required this.userCityController,
      required this.userBioController,
      required this.submit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: size.height / 1.17,
        width: size.width,
        child: ListView(children: [
          const WaveSmall(),
          SizedBox(
            height: size.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style: GuzoTheme.lightModeTextTheme.bodySmall,
                ),
                SizedBox(
                  height: size.height / 90,
                ),
                UserTextField(
                  controller: userNameController,
                  hintText: '',
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Text(
                  "User Handle",
                  style: GuzoTheme.lightModeTextTheme.bodySmall,
                ),
                SizedBox(
                  height: size.height / 90,
                ),
                UserTextField(
                  controller: userNameController,
                  hintText: '',
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Text(
                  "User City",
                  style: GuzoTheme.lightModeTextTheme.bodySmall,
                ),
                SizedBox(
                  height: size.height / 90,
                ),
                UserTextField(
                  controller: userNameController,
                  hintText: '',
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Text(
                  "User Bio",
                  style: GuzoTheme.lightModeTextTheme.bodySmall,
                ),
                SizedBox(
                  height: size.height / 90,
                ),
                UserTextField(
                  controller: userNameController,
                  hintText: '',
                ),
                SizedBox(
                  height: size.height / 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: WideGreenButton(dispatcher: submit, text: "Save"),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.amber,
      height: size.height / 15,
    );
  }
}
