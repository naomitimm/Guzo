import 'package:guzo_app/presentation/exports.dart';

class SightDetailsPage extends StatelessWidget {
  final Sight sight;
  const SightDetailsPage({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Text(sight.name),
    );
  }
}
