import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 41, 171, 135),
        child: ListView(
          children: [
            Align(alignment: Alignment.topLeft, child: circles()),
            Align(alignment: Alignment.bottomRight, child: circles()),
          ],
        ),
      ),
    );
  }

  Widget circles() {
    return const CircleAvatar(
      radius: 150,
      backgroundColor: Color.fromARGB(255, 0, 117, 94),
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Color.fromARGB(255, 41, 171, 135),
      ),
    );
  }
}
