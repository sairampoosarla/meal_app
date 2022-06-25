//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[],
      //here we are specfying the parameter on how the grid shoudl look
      gridDelegate: SilverGridDelegateWithMaxCrossAxisExtent(
        //max number of pixels should be occupied by each element
        maxCrossAxisExtent: 200,
        //aspect ratio of each element
        childAspectRatio: 3 / 2,
        //spacing between two elements in horizontal direction
        crossAxisSpacing: 20,
        //spacing between two elements in vertical direction
        mainAxisSpacing: 20,
      ),
    );
  }
}
