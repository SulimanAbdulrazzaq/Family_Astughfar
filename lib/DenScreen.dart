import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/DenItem.dart';
import 'denData.dart';

class Denscreen extends StatelessWidget {
  const Denscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "الدين",
            style: GoogleFonts.amiri(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,),
        children: [...denItems.map((item) => DenItem(item: item))],
      ),
    );
  }
}
