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
  final String text;
  final TextEditingController controller;
  final void Function() submit;

  const BuildBottomSheet(
      {Key? key,
      required this.text,
      required this.controller,
      required this.submit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 2.3,
      width: size.width,
      child: ListView(children: [
        const WaveSmall(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: GuzoTheme.lightModeTextTheme.bodySmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UserTextField(controller: controller),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: Container(
                height: 40,
                width: 100,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 117, 94),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: GestureDetector(
                    onTap: submit,
                    child: Text("Done",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                )))
      ]),
    );
  }
}
