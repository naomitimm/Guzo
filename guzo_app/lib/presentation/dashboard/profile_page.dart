import 'package:guzo_app/application/auth/logout/logout_bloc.dart';
import 'package:guzo_app/presentation/dashboard/widgets/alert_dialogue.dart';
import 'package:guzo_app/presentation/exports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final cityController = TextEditingController();
  final bioController = TextEditingController();
  final nameController = TextEditingController();
  final handleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: ListView(children: [
              Align(
                alignment: Alignment.topRight,
                child: BlocConsumer<LogoutBloc, LogoutState>(
                  listener: (context, state) {
                    if (state is LogoutSuccessful) {
                      navCubit.toLoginScreen();
                      Navigator.of(context).pop(DialogueAction.yes);
                    }
                  },
                  builder: (context, state) {
                    if (state is Loggingout) {
                      return const CircularProgressIndicator(
                        color: Color.fromRGBO(0, 117, 94, 1),
                      );
                    }
                    if (state is Logoutfailed) {
                      return Text(state.error.toString());
                    }
                    return IconButton(
                        onPressed: () async {
                          await AlertDialogue.logoutDialogue(context, "Logout",
                              "Are you sure you want to log out of john_d?",
                              (() {
                            context.read<LogoutBloc>().add(LogoutRequested());
                          }));
                        },
                        icon: const Icon(Icons.settings),
                        iconSize: 25);
                  },
                ),
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
                  WideGreenButton(
                      dispatcher: () {
                        showBottomSheet(
                            context: context,
                            builder: ((context) => BuildBottomSheet(
                                  submit: (() {
                                    Navigator.of(context).pop();
                                    context.read<UserBloc>().add(UpdateUserCity(
                                        city: cityController.text));
                                  }),
                                  userNameController: nameController,
                                  userHandleController: handleController,
                                  userCityController: cityController,
                                  userBioController: bioController,
                                )));
                      },
                      text: "Edit profile")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
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
                      dispatcher: () {}),
                  ProfileInfoCard(
                      icon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add)),
                      text: "Write details about you",
                      dispatcher: () {}),
                ],
              ),
            ])));
  }
}
