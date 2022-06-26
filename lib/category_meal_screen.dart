import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryMealScreen extends StatelessWidget {
  //const CategoryMeanScreen({Key? key}) : super(key: key);
  static const routeName = '/category-meals';
  //final String id;
  //final String title;

  //CategoryMealScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final title = routeArgs['title'] as String;
    final id = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('The Recipe for the meal is on this screen!'),
      ),
    );
  }
}
