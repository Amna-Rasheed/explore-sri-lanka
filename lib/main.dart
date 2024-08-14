import 'package:flutter/material.dart';
import 'package:my_project/screens/landing_page.dart';
import 'package:my_project/screens/login_page.dart';
import 'package:my_project/screens/signup_page.dart';
import 'package:my_project/screens/home_page.dart';
import 'package:my_project/screens/itinerary_page.dart';
void main() {
  runApp(ExploreSriLankaApp());
}

class ExploreSriLankaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/itinerary': (context) => ItineraryPage(),
      },
    );
  }
}
