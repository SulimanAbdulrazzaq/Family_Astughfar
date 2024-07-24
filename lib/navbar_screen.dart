import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/categories_screen.dart';
import 'package:meal_app/fav.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int SelectedPageIndex = 0;
  void selectedPage(int index) {
    setState(() {
      SelectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = CS();
    if (SelectedPageIndex == 1) {
      currentScreen = Fav();
    }
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     "",
      //     style: GoogleFonts.kalam(fontWeight: FontWeight.bold),
      //   )),
      // ),
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedPage,
        currentIndex: SelectedPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.start), label: "Favorites")
        ],
      ),
    );
  }
}
