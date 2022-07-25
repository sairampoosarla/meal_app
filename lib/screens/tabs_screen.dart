import 'package:flutter/material.dart';
import './favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    CategoriesScreen(),
    FavoritesScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sdfsdf'),
      ),
      // here we are mentioning the page to be loaded
      body: _pages[_selectedPageIndex],
      //if we want to have a navigation bar in the bottom we have mention the
      // following paramter and give it the bottom navigation bar widget
      // and mention the tabs we want have along with the function which should
      // be executed on tapping the tabs
      bottomNavigationBar: BottomNavigationBar(
        // here are mentioning which function to run if someting is tapped on the tab bar
        // in this case the _selectPage is a function which has setstate and it
        // updates the index of the page to load due to which the page is reloaded and changed.
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        //this parameter is to let the flutter know which tab is selected and color
        // the item accordingly.
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}

//this is used for creating tabs in the top of the screen
//this is a function that is provided by the flutter which helps in
//controlling the tabs and making the switch between the screens
//we have to only provide the tab screens we want to have and flutter will
//manage the switch of screens fo us
/*return DefaultTabController(
      length: 2, //mentioning how many number of tabs we should have
      // initialIndex: 0, //by default the tab shown is initial one but if we want to have another tab we have to mention the index of the screen
      child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
            // here we have to mention the tabs we want to have and flutter
            //will internally corellate the screens mentioned in the TabBarView
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favorites',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CategoriesScreen(),
              FavoritesScreen(),
            ],
          )),
    );*/
