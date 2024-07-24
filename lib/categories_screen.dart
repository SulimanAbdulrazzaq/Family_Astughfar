import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/DenScreen.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/family_data.dart';
import 'package:meal_app/family_screen.dart';
import '';

class CS extends StatelessWidget {
  const CS({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 3, mainAxisSpacing: 5),
      children: [
        ...items.map((item) => InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              mouseCursor: SystemMouseCursors.click,
              onTap: () {
                if (item.id == "f1") {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => FamilyScreen()));
                } else {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => Denscreen()));
                }
              },
              child: Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(colors: [
                      item.color.withOpacity(0.9),
                      item.color.withOpacity(0.54)
                    ])),
                child: Padding(
                  padding: const EdgeInsets.all(8.0 * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: GoogleFonts.kalam(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
