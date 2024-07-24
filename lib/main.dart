import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:meal_app/navbar_screen.dart';

import 'categories_screen.dart';

void main() {
  
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,

    // DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Family Matters',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Family Matters",
              style: GoogleFonts.kalam(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: NavbarScreen(),
      ),
    );
  }
}
                                                                                                     