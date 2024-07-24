import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/AzkarS.dart';
import 'package:meal_app/astgufar.dart';
import 'package:meal_app/denModel.dart';
import 'package:meal_app/takbir.dart';

import 'AzkarM.dart';

class DenItem extends StatelessWidget {
  const DenItem({super.key, required this.item});
  final DenGridModel item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (item.id == "a1") {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (builder) => Astgufar()));
        } else if (item.id == "t1") {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (builder) => Takbir()));
        } else if (item.id == "s1") {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (builder) => AzkarS()));
        } else if (item.id == "m1") {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (builder) => AzkarM()));
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
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 12,
              child: Text(
                textDirection: TextDirection.rtl,
                item.name,
                style: GoogleFonts.amiri(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
