//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({Key? key}) : super(key: key);

  final id;
  final title;
  final color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    // Navigator is a widget that is offered by flutter which can be used when
    // we want to change between screens, we have to mention which screen we
    // want to see that is to be mentioned in push section
    //Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    //  return CategoryMealScreen(id, title);
    //}));

    //here we are using the named route with out a variable and directly giving
    //name in route section in main dart file.
    //Navigator.of(ctx)
    //    .pushNamed('/category-meals', arguments: {'id': id, 'title': title});

    //here we are using the named route where the name of the route is saved as
    //property in a class
    Navigator.of(ctx).pushNamed(CategoryMealScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    //Inkwell is a widget used here, which has a ontap parameter due to which
    //it is waped on the card widget
    return InkWell(
      //on taping the card it has to perform some operations so we are mentioning
      // a function which performs the screen transfer
      onTap: () => selectCategory(context),
      //this is the color which is shown as affect when the card is tapped on it
      splashColor: Theme.of(context).primaryColor,
      //this the background reppel affect shape shown when we tap on it.
      borderRadius: BorderRadius.circular(50),
      child: Card(
        margin: EdgeInsets.all(10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        color: color,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
