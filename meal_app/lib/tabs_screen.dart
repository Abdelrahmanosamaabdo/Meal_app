import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favourites_screen.dart';
import './filters_screen.dart';

class Tabs_Screen extends StatefulWidget {
  const Tabs_Screen({Key? key}) : super(key: key);

  @override
  _Tabs_ScreenState createState() => _Tabs_ScreenState();
}

class _Tabs_ScreenState extends State<Tabs_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('YUMMI'),
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.list),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.filter_alt),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            width: double.infinity,
            color: Colors.black.withOpacity(0.85),
            padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(10, 75, 10, 10),
                  color: Colors.black,
                  child: Text('YUMMI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.list, color: Colors.white, size: 25),
                  title: Text(
                    'Categories',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => Categories_Screen(),
                ),
                ListTile(
                  leading:
                      Icon(Icons.filter_alt, color: Colors.white, size: 25),
                  title: Text(
                    'Filters',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => Filters_Screen(),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Categories_Screen(),
            Favourites_Screen(),
            Filters_Screen(),
          ],
        ),
      ),
    );
  }
}
