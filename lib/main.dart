import 'package:flutter/material.dart';
import 'package:flutter_web/screens/about_page.dart';
import 'package:flutter_web/screens/contact_page.dart';
import 'package:flutter_web/screens/library_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Reading Brain',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/library': (context) => LibraryPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}
