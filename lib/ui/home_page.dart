import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class HomepageScreen extends StatefulWidget {
  static const route= '/homepage';
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }

}

class HomeScreenState extends State<HomepageScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: homeAppBar(),
            backgroundColor: Colors.blue,
            bottomNavigationBar: bottomNavigationBar(),
            body: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child:
                ListView(children: [
                  searchBar(),
                  Container(margin: EdgeInsets.only(top: 40)),
                  Text("home"),


                ]))));
  }

  Widget banners() {
    List<Color> bannerColors = [
      Colors.deepPurple,
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.orange
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 100.0,
        enlargeCenterPage: true,
        onPageChanged: (position, reason) {
          print(reason);
          print(CarouselPageChangedReason.controller);
        },
        enableInfiniteScroll: false,
      ),
      items: bannerColors.map<Widget>((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              // height: 100.0,
              decoration: BoxDecoration(
                color: i,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget searchBar() {
    return Container(
      // margin: const EdgeInsets.all(5),
      height: 50,
      child: const CupertinoSearchTextField(
        backgroundColor: Colors.white,
        padding: EdgeInsets.only(left: 10),
        prefixIcon: Icon(Icons.search, size: 30),
        placeholder: 'Bạn tìm gì hôm nay?',
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

  PreferredSizeWidget homeAppBar() {
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
}
