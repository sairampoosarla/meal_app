import "package:flutter/material.dart";

class Category {
  final String id;
  final String title;
  final Color color;

  //adding const so that the values of variables can't be changed after initlizing with constructor
  const Category(
      {required this.id, required this.title, this.color = Colors.orange});
}
