import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class UserpageScreen extends StatefulWidget {
  static const route= '/userpage';
  @override
  State<StatefulWidget> createState() {
    return UserScreenState();
  }

}

class UserScreenState extends State<UserpageScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: userAppBar(),
            backgroundColor: Colors.blue,
            bottomNavigationBar: bottomNavigationBar(),
            body: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child:
                ListView(children: [

                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),
                  buildBackgruondCard(),


                ]))));
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

  PreferredSizeWidget userAppBar() {
    return AppBar(
        title: Image.network(
          'https://mentori.vn/upload/recruitment/uwc1625303270.png',
          width: 400,
          height: 70,
        ),
        leading: Center(
          child: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
          Container(width: 20),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Shopping Cart',
            onPressed: () {},
          ),
        ]);
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
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Cá nhân',
          backgroundColor: Colors.green,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blueAccent,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}