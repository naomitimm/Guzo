import 'package:flutter/material.dart';
import 'package:guzo_app/domain/nav_pages/home_page/sight_model.dart';

class SightDetail extends StatelessWidget {
  final String name;
  const SightDetail({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
    );
  }
}
