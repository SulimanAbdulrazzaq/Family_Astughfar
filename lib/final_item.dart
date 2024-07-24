import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/FamilyMemberScreen.dart';
import 'package:meal_app/family_data.dart';
import 'package:meal_app/family_model.dart';
import 'package:transparent_image/transparent_image.dart';

class FinalItem extends StatelessWidget {
  final FamilyModel item;

  const FinalItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          final index =
              family_data.indexWhere((test) => test.name == item.name);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (builder) => Familymemberscreen(
                    index: index,
                  )));
        },
        mouseCursor: SystemMouseCursors.click,
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: AspectRatio(
            aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
            child: Stack(
              children: [
                Positioned.fill(
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: AssetImage(item.image),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kalam(
                          color: Colors.white,
                          fontSize: 19.5,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
