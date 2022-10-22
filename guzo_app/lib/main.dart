import 'package:flutter/material.dart';
import 'package:guzo_app/presentation/auth/login_page.dart';
import 'package:guzo_app/presentation/host_page.dart';
import 'package:guzo_app/presentation/navPages/profile_page.dart';
import 'package:guzo_app/presentation/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const MaterialApp(
    // home: HostPage(),
    home: OnBoarding(),
  ));
}
