import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/AzkarData.dart';

class AzkarS extends StatelessWidget {
  const AzkarS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "اذكار الصباح",
            style: GoogleFonts.amiri(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: ListView(
          // padding: EdgeInsets.all(15),
          
          children: [
            Center(child: Text("اذكار الصباح",style: GoogleFonts.amiri(fontWeight: FontWeight.bold,fontSize:24))),
            SizedBox(height: 10,),
            ...azkarSabah.map(
              (item) => Card(
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: AutoSizeText(
                            item, // Ensure item is a String
                            style: GoogleFonts.amiri(
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 6,
                            minFontSize: 17,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
