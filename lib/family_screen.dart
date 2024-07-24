import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/family_data.dart';
import 'final_item.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Family Matters",
            style: GoogleFonts.kalam(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: family_data.map((item) => FinalItem(item: item)).toList(),
      ),
    );
  }
}
