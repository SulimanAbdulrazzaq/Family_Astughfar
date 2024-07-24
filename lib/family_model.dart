import 'package:flutter/material.dart';

class FamilyModel {
  final String id;
  final String name;
  final int age;
  final String Description;
  final String image;
  final String contact;

  FamilyModel(
      {required this.id,
      required this.contact,
      required this.Description,
      required this.name,
      required this.age,
      required this.image});
}
