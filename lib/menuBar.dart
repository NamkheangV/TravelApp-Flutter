import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp_6401861/pages/homePage.dart';
import 'package:myapp_6401861/pages/accomPage.dart';
import 'package:myapp_6401861/pages/travelPage.dart';
import 'package:myapp_6401861/pages/contactPage.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  int _selectedIndex = 0;

  final List<Widget> _buttonAction = [
    MyHome(),
    AccommodationPage(),
    TravelPage(),
    ContactPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buttonAction[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 90, 163, 223),
          selectedItemColor: Colors.white,
          selectedLabelStyle: GoogleFonts.notoSansThai(),
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.hotel), label: 'Accommodation'),
            BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Travel'),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
          ]),
    );
  }
}
