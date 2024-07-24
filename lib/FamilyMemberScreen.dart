import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/family_data.dart';
import 'package:transparent_image/transparent_image.dart';

class Familymemberscreen extends StatelessWidget {
  const Familymemberscreen({super.key, required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    // alert() {
    //   var alert;
    //   if (Platform.isIOS) {
    //     alert = CupertinoAlertDialog(
    //       title: Text("Contact Email"),
    //       content: Text(family_data[index].contact),
    //       actions: [
    //         TextButton(
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //             child: Text("Ok"))
    //       ],
    //     );
    //   } else {
    //     AlertDialog(
    //       title: Text("Contact Email"),
    //       content: Text(family_data[index].contact),
    //       actions: [
    //         TextButton(
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //             child: Text("Ok"))
    //       ],
    //     );
    //   }
    //   return alert;
    // }

    // buttton() {
    //   var button;

    //   if (Platform.isIOS) {
    //     button = CupertinoButton(
    //         onPressed: () {
    //           showDialog(context: context, builder: (builder) => alert());
    //         },
    //         child: Text("Conatct"));
    //   } else {
    //     button = ElevatedButton.icon(
    //         onPressed: () {
    //           showDialog(context: context, builder: (builder) => alert());
    //         },
    //         label: Text("Conatct"));
    //   }
    //   return button;
    // }

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            family_data[index].name,
            textAlign: TextAlign.center,
            style: GoogleFonts.kalam(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Positioned(
                      child: Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FadeInImage(
                              width: double.infinity,
                              height: 280,
                              placeholder: MemoryImage(kTransparentImage),
                              image: AssetImage(family_data[index].image),
                              fit: BoxFit.cover,
                            ),
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Name: " + family_data[index].name,
                    style: GoogleFonts.kalam(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Age: " + family_data[index].age.toString(),
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.5,
                          fontStyle: FontStyle.italic)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Description: " + family_data[index].Description,
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          fontStyle: FontStyle.italic)),
                  SizedBox(
                    height: 15,
                  ),
                  Platform.isIOS
                      ? CupertinoButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (builder) => Platform.isIOS
                                    ? CupertinoAlertDialog(
                                        title: Text("Contact Email"),
                                        content:
                                            Text(family_data[index].contact),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Ok"))
                                        ],
                                      )
                                    : AlertDialog(
                                        title: Text("Contact Email"),
                                        content:
                                            Text(family_data[index].contact),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Ok"))
                                        ],
                                      ));
                          },
                          child: Text("Conatct"))
                      : ElevatedButton.icon(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (builder) => Platform.isIOS
                                    ? CupertinoAlertDialog(
                                        title: Text("Contact Email"),
                                        content:
                                            Text(family_data[index].contact),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Ok"))
                                        ],
                                      )
                                    : AlertDialog(
                                        title: Text("Contact Email"),
                                        content:
                                            Text(family_data[index].contact),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Ok"))
                                        ],
                                      ));
                          },
                          label: Text("Conatct"))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
