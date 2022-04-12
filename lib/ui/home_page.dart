import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'ui_components/app_bar.dart';
import 'ui_components/search_bar.dart';

import 'ui_components/product.dart';

class HomepageScreen extends StatefulWidget {
  static const route= '/homepage';
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }

}

class HomeScreenState extends State<HomepageScreen> {

  int currentTabIndex =0;
  List<Widget> tabs = [
    Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child:
        ListView(children: [
          SearchBar(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),
          Container(margin: EdgeInsets.only(top: 40)),
          Products(),

        ])),
    Text("Danh mục"),
    Text("Cá nhân")
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: HomeAppBar(),
            backgroundColor: Colors.blue,
            bottomNavigationBar: bottomNavigationBar(),
            body: tabs[currentTabIndex]
        )
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Trang chủ',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'Danh mục',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Cá nhân',
          backgroundColor: Colors.pink,
        ),
      ],
      currentIndex: currentTabIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }


}
