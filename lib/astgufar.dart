import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Astgufar extends StatefulWidget {
  const Astgufar({super.key});

  @override
  State<Astgufar> createState() => _AstgufarState();
}

class _AstgufarState extends State<Astgufar> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "استغفار",
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
              label: Text("استغفر الله",
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
