import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Takbir extends StatefulWidget {
  const Takbir({super.key});

  @override
  State<Takbir> createState() => _TakbirState();
}

class _TakbirState extends State<Takbir> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "تكبير",
            style: GoogleFonts.amiri(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(count.toString(),
                  style: GoogleFonts.amiri(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
                child: TextButton.icon(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              label: Text("الله اكبر",
                  style: GoogleFonts.amiri(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
                      icon: Icon(Icons.plus_one),
            )),
          ],
        ),
      ),
    );
  }
}
