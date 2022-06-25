//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({Key? key}) : super(key: key);

  final title;
  final color;

  CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(title),
      color: color,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}