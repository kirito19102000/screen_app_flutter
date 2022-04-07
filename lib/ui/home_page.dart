import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'ui_components/app_bar.dart';
import 'ui_components/search_bar.dart';
import 'TabScreen.dart';
import 'ui_components/product.dart';

class HomepageScreen extends StatefulWidget {
  static const route= '/homepage';
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }

}

class HomeScreenState extends State<HomepageScreen> {
  int _selectedIndex = 0;
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
    TabScreen(Colors.orange),
    TabScreen(Colors.green)
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

  Widget buildBackgruondCard(){
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1579546929518-9e396f3cc809?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name of product",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        const SizedBox(height: 8,),
        Text('Price',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ],
    ),
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
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'Danh mục',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Cá nhân',
        ),
      ],
      currentIndex: currentTabIndex,
      selectedItemColor: Colors.blueAccent,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }


}
